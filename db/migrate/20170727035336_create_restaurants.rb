class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :picture
      t.string :address1
      t.string :address2
      t.string :postal_code
      t.string :contact

      t.timestamps
    end
  end
end
