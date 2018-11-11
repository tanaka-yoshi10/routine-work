class Routine < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_one_attached :image
end
