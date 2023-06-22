class Pet < ApplicationRecord
  self.table_name = 'pet'

  validates :name, presence: true

end
