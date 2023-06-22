class Animal < ApplicationRecord
  self.table_name = 'animal'

  scope :dogs_only, -> { where(species: 'dog') }
  scope :cats_only, -> { where(species: 'cat') }

  validates :age, :color, :weight, :species, presence: true

  has_many :pets
end
