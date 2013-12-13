# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'CSV'
file_path = Rails.root.join'db/data/mass_health_data.csv'

CSV.foreach(file_path, headers: true) do |row|
  row.each do |param|
    param[1].to_s.gsub!(/[\$\,\s]/,'')
    if param.last.to_s.downcase == 'na'
      param.pop
      param << nil
    end
  end

  town = HealthInfo.find_or_initialize_by(geography: row[0]) do |record|
    record[:geography] = row[0]
    record[:total_pop_year_2005] = row[1]
    record[:age_0_19_year_2005] = row[2]
    record[:age_65_year_2005] = row[3]
    record[:per_capita_income_year_2000] = row[4]
    record[:persons_living_below_200_poverty_year_2000] = row[5]
    record[:per_all_persons_living_below_200per_poverty_level_year_2000] = row[6]
    record[:per_adequacy_prenatal_care_kotelchuck] = row[7]
    record[:per_c_section_deliveries_2005_2008] = row[8]
    record[:number_of_infant_deaths_2005_2008] = row[9]
    record[:infant_mortality_rate_deaths_per_1000_live_births_2005_2008] = row[10]
    record[:per_low_birthweight_2005_2008] = row[11]
    record[:per_multiple_births_2005_2008] = row[12]
    record[:per_publicly_financed_prenatal_care_2005_2008] = row[13]
    record[:per_teen_births_2005_2008] = row[14]
  end
  town.save
end
HealthInfo.last.delete
