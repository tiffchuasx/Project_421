class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_picture
      t.string :name
      t.string :password
      t.string :top_5_restaurants

      t.timestamps
    end
  end
end
