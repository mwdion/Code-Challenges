class Student < ActiveRecord::Base
  has_many :satelite_campuses
  has_many :campuses, through: :satelite_campuses
end
