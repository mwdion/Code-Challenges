class Soda < ActiveRecord::Base
  has_many :ice_cream_flavors
  has_many :soda_flavors
end
