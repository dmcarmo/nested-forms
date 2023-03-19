class Office < ApplicationRecord
  has_many :office_facilities
  has_many :facilities, through: :office_facilities
  accepts_nested_attributes_for :office_facilities, reject_if: :all_blank, allow_destroy: true
end
