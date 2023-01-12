class CreateSchoolAccessories < ActiveRecord::Migration[7.0]
  def change
    create_table :school_accessories do |t|
      t.string :manufacturer
      t.string :type
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
