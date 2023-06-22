class Animal < ApplicationRecord
  self.table_name = 'animal'

  validates :age, :color, :weight, :species, presence: true

  has_many :pets
end
