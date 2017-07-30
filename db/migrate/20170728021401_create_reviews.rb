class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :user_picture
      t.string :name
      t.integer :user_spending
      t.integer :no_of_parties
      t.integer :overall_rating
      t.string :who_brought_me_here
      t.string :char_review

      t.timestamps
    end
  end
end
