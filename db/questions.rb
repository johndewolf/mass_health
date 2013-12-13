#What 3 towns have the highest population of citizens that are 65 years and older?
HealthInfo.order(age_65_year_2005: :desc).limit(3)
#What 3 towns have the highest population of citizens that are 19 years and younger?
HealthInfo.order(age_0_19_year_2005: :desc).limit(3)
#What 5 towns have the lowest per capita income?
HealthInfo.order(:per_capita_income_year_2000).limit(5)
# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
HealthInfo.order(per_teen_births_2005_2008: :desc).where(:geography != 'Boston').where(:geography != 'Beverly').where(:geography != 'Becket').where(:per_teen_births_2005_2008 != nil).first
# Omitting Boston, what town has the highest number of infant mortalities?
HealthInfo.order(:infant_mortality_rate_deaths_per_1000_live_births_2005_2008).where(:geography != 'Boston')
