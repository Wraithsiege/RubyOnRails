class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.boolean :admin
      t.boolean :moderator

      t.timestamps
    end
  end
end
