---------------------------------DATA CLEANING----------------------------
--------------------------------------------------------------------------

--viewing the data 
select * from Unicorn_Companies$ 

--handling column name and removing white spaces

exec sp_rename 'Unicorn_Companies$.Date Joined', 'Date_Joined', 'column' 
exec sp_rename 'Unicorn_Companies$.Year Founded', 'Year_Founded', 'column'
exec sp_rename 'Unicorn_Companies$.Select Investors', 'Select_Investors', 'column'

--Rows which are duplicate and assigns them row number

with unicornCTE as 
(
select *, row_number() over (partition by company order by company) as row_number 
from Unicorn_Companies$
)
select * from unicornCTE

--deleting the duplicate rows

with unicornCTE as 
(
select *, row_number() over (partition by company order by company) as row_number 
from Unicorn_Companies$
)
delete from unicornCTE where row_number>1
select * from Unicorn_Companies$

--data types of the columns

select COLUMN_NAME, data_type from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Unicorn_Companies$'

--convert data type

alter table Unicorn_Companies$
alter column date_joined date

--seperated year part from date joined and created anew column
--to make the data type of year founded and date joined same so that subtration operator could be used
--then deleting the previous date joined column

select date_joined, datepart(yyyy,date_joined) from Unicorn_Companies$

alter table Unicorn_Companies$ 
add DateJoined int 

update Unicorn_Companies$
set datejoined=datepart(yyyy,date_joined)

alter table Unicorn_Companies$
drop column date_joined

--checking for null values

select company from Unicorn_Companies$ where company is null
select Valuation from Unicorn_Companies$ where Valuation is null
select Industry from Unicorn_Companies$ where Industry is null
select city from Unicorn_Companies$ where city is null
select Country from Unicorn_Companies$ where Country is null
select Continent from Unicorn_Companies$ where Continent is null
select Year_Founded from Unicorn_Companies$ where Year_Founded is null
select Funding from Unicorn_Companies$ where Funding is null
select Select_investors from Unicorn_Companies$ where Select_investors is null
select DateJoined from Unicorn_Companies$ where DateJoined is null

--only city column has 15 null values in it (as there are only 15 companies, i can populate these values using google, from google all the companies from singapore had no city mentioned hence we populate them with the country name only)

select * from Unicorn_Companies$ where city is null

update Unicorn_Companies$
set city='Nassau'
where company='FTX'

update Unicorn_Companies$
set city='Hong Kong'
where company='Amber Group'

update Unicorn_Companies$
set city='Singapore'
where Country= 'Singapore'

--(Cider and WeLab are the only companies from Hong Kong which dont have any city mentioned from hong kong hence we populate it with hong kong only, hence we can populate them individually)--
select * from Unicorn_Companies$ where country='hong kong'

update Unicorn_Companies$
set city='Hong Kong'
where company='Cider'

update Unicorn_Companies$
set city='Hong Kong'
where company='WeLab'







