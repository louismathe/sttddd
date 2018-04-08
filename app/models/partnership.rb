class Partnership < ApplicationRecord
  belongs_to :university
  belongs_to :partner, :class_name => "University"

  def partner?(university)
    partners.include?(university)
  end
end
