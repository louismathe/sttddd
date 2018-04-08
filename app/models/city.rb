class City < ApplicationRecord
  has_many :addresses
  has_many :flats
end
