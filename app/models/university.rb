class University < ApplicationRecord
  belongs_to :address
  has_many :partnerships
  has_many :inverse_partnerships, :class_name => "Partnership", :foreign_key => "partner_id"

  def partners
    partners_array = partnerships.map{|partnership| partnership.partner }
    partners_array + inverse_partnerships.map{|partnership| partnership.user }
    partners_array.compact
  end
end
