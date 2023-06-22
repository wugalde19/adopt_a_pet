class Pet < ApplicationRecord
  self.table_name = 'pet'

  validates :name, presence: true

  belongs_to :owner
  belongs_to :animal

end
