----------EXPLORATORY DATA ANALYSIS-------------
------------------------------------------------

--viewing first 10 rows
select top (10) * 
from Unicorn_Companies$ 
order by 2,3

--top 10 companies with highest valuation
select top (10) * 
from Unicorn_Companies$ 
order by Valuation_in_Billions desc

--oldest company to reach 1 billion valuation and when they reached
select company, year_founded, DateJoined  
from Unicorn_Companies$ 
order by year_founded

--companies wrt industry
select count (company) as Total_Companies, Industry  
from Unicorn_Companies$ 
group by Industry 
order by Total_Companies desc

--companies wrt country
select count (company) as Total_Companies, country  
from Unicorn_Companies$ 
group by country 
order by Total_Companies desc

--companies wrt contient
select count (company) as Total_Companies, Continent  
from Unicorn_Companies$ 
group by Continent 
order by Total_Companies desc

--companies wrt cites
select count (company) as Total_Companies, City  
from Unicorn_Companies$ 
group by City 
order by Total_Companies desc

--time taken by the companies to cross 1 billion mark 
alter table Unicorn_Companies$
add  time_taken_temp int 

update Unicorn_Companies$
set time_taken_temp = datejoined-year_founded

select * from Unicorn_Companies$ 
order by time_taken_temp desc

--average time taken by the companies to cross 1 billion mark
select avg (time_taken_temp) from Unicorn_Companies$ 

--Yidian Zixun company had its year founded and date joined reversed
update Unicorn_Companies$
set Year_founded='2013'
where company='Yidian Zixun'

update Unicorn_Companies$
set DateJoined='2021'
where company='Yidian Zixun' 

--unicorns from india
select * from Unicorn_Companies$ 
where country='india' 
order by Valuation_in_Billions desc





