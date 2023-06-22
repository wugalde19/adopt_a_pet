class CreatePet < ActiveRecord::Migration[7.0]
  def change
    create_table :pet do |t|
      t.string :name
      t.datetime :adoption_date

      t.timestamps
    end

    add_reference :pet, :owner, foreign_key: { to_table: :owner }
    add_reference :pet, :animal, foreign_key: { to_table: :animal }
  end
end
