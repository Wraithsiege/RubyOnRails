class CreateGiftCards < ActiveRecord::Migration[7.0]
  def change
    create_table :gift_cards do |t|
      t.integer :value

      t.timestamps
    end
  end
end
