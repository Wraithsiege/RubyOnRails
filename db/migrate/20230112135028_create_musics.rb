class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string :albumName
      t.string :performer
      t.string :genre
      t.integer :price

      t.timestamps
    end
  end
end
