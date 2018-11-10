class Routine < ApplicationRecord
  has_many :selections, dependent: :destroy
end
