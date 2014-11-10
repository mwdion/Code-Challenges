class Soda < ActiveRecord::Base
  has_many :ice_cream_flavors
  has_many :soda_flavors
  has_many :flavors, through: :soda_flavors
end
