class Comedian < ActiveRecord::Base
  has_many :specials
  
  def self.average_age
    average(:age).round(2)
  end
end
