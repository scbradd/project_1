class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.text :name
      t.text :image
      t.text :url
      t.integer :red_id
      t.integer :white_id
      t.integer :user_id

      t.timestamps
    end
  end
end
