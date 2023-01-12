class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.string :manufacturer
      t.string :type
      t.string :name
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
