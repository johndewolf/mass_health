class HealthInfo < ActiveRecord::Base
  validates :geography, length: { minimum: 2, maximum: 25 }
end
