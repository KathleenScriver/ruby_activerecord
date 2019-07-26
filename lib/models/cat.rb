class Cat < ActiveRecord::Base
  belongs_to :owner
  belongs_to :breed

  def self.all_longhair_cats
    where(hair_length: "long")
  end
end
