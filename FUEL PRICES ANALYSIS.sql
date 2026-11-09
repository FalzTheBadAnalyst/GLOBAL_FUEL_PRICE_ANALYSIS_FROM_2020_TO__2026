--GLOBAL FUEL PRICE 2020-2026

select *
from [Global Fuel Price 2020-2026]

--KPL'S

--TOTAL COUNTRIES
select count(distinct(country)) as Total_Countries
from [Global Fuel Price 2020-2026]

--TOTAL REGIONS
Select count(distinct(region)) as Total_Regions
from [Global Fuel Price 2020-2026]

--AVERAGE PETROL PRICE
Select cast(avg(petrol_usd_liter) as decimal(10,2)) as Average_Petrol_Price
from [Global Fuel Price 2020-2026]

--AVERAGE DIESEL PRICE
Select cast(avg(diesel_usd_liter) as decimal(10,2)) as Average_Diesel_Price
from [Global Fuel Price 2020-2026]

--AVERAGE LPG PRICE
Select cast(avg(lpg_usd_liter) as decimal(10,2)) as Average_LPG_Price
from [Global Fuel Price 2020-2026]

--AVERAGE CRUDE PRICE
Select cast(avg(brent_crude_usd) as decimal(10,2)) as Crude_Price
from [Global Fuel Price 2020-2026]

--CHART

--TRENDS IN PETORL, DIESEL AND LPG PRICE
select year, cast(avg(Petrol_usd_liter) as decimal(10,2)) as Petrol_Price, cast(avg(diesel_usd_liter) as decimal(10,2)) as Diesel_Price, 
cast(avg(lpg_usd_liter) as decimal(10,2))as LPG_Price
from [Global Fuel Price 2020-2026]
group by year
order by year desc

--- PETROL PRICE ACROSS REGIONS
select region, cast(avg(petrol_usd_liter) as decimal(10,2)) as Avg_Petrol_Price
from [Global Fuel Price 2020-2026]
group by region 
order by Avg_Petrol_Price desc

--PETROL PRICE BY TOP 5 COUNTRY 
select top 5 country,cast(avg(petrol_usd_liter) as decimal(10,2)) as Avg_Petrol_Price
from [Global Fuel Price 2020-2026]
group by country
order by Avg_Petrol_Price DESC

--PETROL PRICE BY BOTTOM 5 COUNTRY
select top 5 country,cast(avg(petrol_usd_liter) as decimal(10,2)) as Avg_Petrol_Price 
from [Global Fuel Price 2020-2026]
group by country
order by Avg_Petrol_Price


--INCOME LEVEL BY FUEL PRICES
select income_level,cast(avg(petrol_usd_liter) as decimal(10,2)) as Petrol_Prices, cast(avg(diesel_usd_liter) as decimal(10,2)) as Diesel_Prices,
cast(avg(lpg_usd_liter) as decimal(10,2)) as LPG_Price 
from [Global Fuel Price 2020-2026]
group by income_level 


--SUBSIDY LEVEL BY FUEL PRICES
Select subsidy_level, cast(avg(petrol_usd_liter) as decimal(10,2)) as Petrol_Price, cast(avg(diesel_usd_liter) as decimal(10,2))as Diesel_Price,
cast(avg(lpg_usd_liter) as decimal(10,2)) as LPG_Price
from [Global Fuel Price 2020-2026]
group by subsidy_level


-- Assosiation between Crude oil price and Fuel price by Year
select year,cast(avg(brent_crude_usd) as decimal(10,2)) as Brent_Oil ,cast(avg(Petrol_usd_liter) as decimal(10,2)) as Petrol_Price, cast(avg(diesel_usd_liter) as decimal(10,2)) as Diesel_Price, 
cast(avg(lpg_usd_liter) as decimal(10,2))as LPG_Price
from [Global Fuel Price 2020-2026]
group by year
order by year desc

-- Relationship Between Taxation and Fuel Prices Across Region
select region,cast(avg(tax_percentage) as decimal(10,2)) as Tax_PCT,cast(avg(Petrol_usd_liter) as decimal(10,2)) as Petrol_Price, 
cast(avg(diesel_usd_liter) as decimal(10,2)) as Diesel_Price, 
cast(avg(lpg_usd_liter) as decimal(10,2))as LPG_Price
from [Global Fuel Price 2020-2026]
group by region
order by Tax_PCT desc

