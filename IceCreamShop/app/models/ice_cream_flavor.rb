class IceCreamFlavor < ActiveRecord::Base
  belongs_to :ice_cream
  belongs_to :soda
  belongs_to :milkshake
end
