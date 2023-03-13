class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.text :description
      t.decimal :price
      t.integer :capacity
      t.boolean :availability

      t.timestamps
    end
  end
end
