class Campus < ActiveRecord::Base
  has_many :satelite_campuses
  has_many :students, through: :satelite_campuses
end
