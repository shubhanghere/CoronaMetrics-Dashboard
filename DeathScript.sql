select DISTINCT continent 
from ConfirmedCases

select location,population,date,new_cases,total_cases from ConfirmedCases





select   continent,SUM(new_cases) from ConfirmedCases
where location not in ('World','European Union','International')
GROUP BY continent

select location,date,SUM(new_cases) as TotalCases from ConfirmedCases
where location='Indaia'
EXTRACT (year from date) as year
GROUP BY continent

select EXTRACT <year from date> from ConfirmedCases;

SELECT
  transaction_date AS transaction_date,
  EXTRACT(year FROM transaction_date) AS year,
  SUM(money) OVER(PARTITION BY EXTRACT(year FROM transaction_date)) AS money_earned
FROM data;


select date, continent,location  ,sum(new_cases) as New_Cases from ConfirmedCases
 where location not in ('World','European Union','International')
group by continent, date 

order by date


select continent,location,date,new_cases from ConfirmedCases
where continent ='Asia'

--__________________________________________________________________________________________________________________


--______________________________WHO REPORT_______________________________________________________________________



select *from WHOReport

select DateReported ,Country,NewCases from WHOReport
group by DateReported ,Country 
order by DateReported

SELECT DISTINCT Country 
FROM WHOReport;



SELECT *FROM WHO



SELECT SUM(New_cases),Sum(New_deaths),Date_reported  from WHO
group by Date_reported


--Date_reported='16-11-2020'




select Date_reported , New_deaths from WHO 
group by Date_reported 

select Date_reported,country,Cumulative_cases  from WHO
group by Date_reported,country



select location,date,total_cases from ConfirmedCases_csv
group by date

select sum(new_cases) ,sum(new_deaths) from WHO



