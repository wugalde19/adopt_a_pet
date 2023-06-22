class Owner < ApplicationRecord
  self.table_name = 'owner'

  validates :name, :email, :age, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: /\A\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+\z/

  has_many :pets, dependent: :destroy


  def pets_adopted_count
    pets.count
  end

  def pets_names
    pets.map(&:name).join(', ')
  end
end
