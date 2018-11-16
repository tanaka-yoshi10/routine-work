class Routine < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :histories, dependent: :nullify
  has_one_attached :image
  
  accepts_nested_attributes_for :selections, reject_if: :all_blank, allow_destroy: true
end
