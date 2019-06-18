class Breed < ActiveRecord::Base
  def initialize
  end

  def self.highest_price
    maximum(:avg_price)
  end
end
