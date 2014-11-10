class IceCream < ActiveRecord::Base
  has_many :ice_cream_flavors
  has_many :flavors, through: :ice_cream_flavors
end
