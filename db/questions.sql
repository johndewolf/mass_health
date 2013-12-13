-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography FROM health_databases ORDER BY age_65_year_2005 DESC;

-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography FROM health_infos ORDER BY age_0_19_year_2005 DESC;

-- What 5 towns have the lowest per capita income?
SELECT geography FROM health_infos ORDER BY per_capita_income_year_2000 LIMIT 5;

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography FROM health_infos
WHERE geography != 'Boston' AND geography != 'Becket' AND geography != 'Beverly'
ORDER BY per_teen_births_2005_2008 DESC;

-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography, infant_mortality_rate_deaths_per_1000_live_births_2005_2008 FROM health_infos
WHERE geography != 'Boston'
ORDER BY infant_mortality_rate_deaths_per_1000_live_births_2005_2008 DESC;
