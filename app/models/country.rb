class Country < ApplicationRecord
  has_many :banks
  has_many :operators
  has_many :address
end
