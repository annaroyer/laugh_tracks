class Comedian < ActiveRecord::Base
  def self.average_age
    average(:age).round(2)
  end
end
