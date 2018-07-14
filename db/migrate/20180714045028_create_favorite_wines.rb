class CreateFavoriteWines < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_wines do |t|
      t.integer :red_id
      t.integer :white_id
      t.integer :user_id

      t.timestamps
    end
  end
end
