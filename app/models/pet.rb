class Pet < ApplicationRecord
  self.table_name = 'pet'

  scope :older_than_five, -> { joins(:animal).where('age > 5') }

  validates :name, presence: true

  belongs_to :owner
  belongs_to :animal

  def days_since_adopted
    return 0 if adoption_date.nil?
    (Time.now - adoption_date) / 1.day
  end

end
