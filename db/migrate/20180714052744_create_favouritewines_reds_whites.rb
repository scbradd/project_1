class CreateFavouritewinesRedsWhites < ActiveRecord::Migration[5.2]
  def change
    create_table :favouritewines_reds_whites, :id => false do |t|
      t.integer :whites_id
      t.integer :reds_id
      t.integer :varietal_id

    end
  end
end
