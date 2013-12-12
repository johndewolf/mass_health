class CreateHealthInfos < ActiveRecord::Migration
  def change
    create_table :health_infos do |t|
      t.string :geography
      t.integer :total_pop_year_2005
      t.float :age_0_19_year_2005
      t.float :age_65_year_2005
      t.float :per_capita_income_year_2000
      t.float :persons_living_below_200_poverty_year_2000
      t.float :per_all_persons_living_below_200per_poverty_level_year_2000
      t.float :per_adequacy_prenatal_care_kotelchuck
      t.float :per_c_section_deliveries_2005_2008
      t.integer :number_of_infant_deaths_2005_2008
      t.float :infant_mortality_rate_deaths_per_1000_live_births_2005_2008
      t.float :per_low_birthweight_2005_2008
      t.float :per_multiple_births_2005_2008
      t.float :per_publicly_financed_prenatal_care_2005_2008
      t.float :per_teen_births_2005_2008
      t.timestamps
    end
  end
end
