class CreateVarietals < ActiveRecord::Migration[5.2]
  def change
    create_table :varietals do |t|
      t.integer :red_id
      t.integer :white_id
      t.text :image
      t.text :url

      t.timestamps
    end
  end
end
