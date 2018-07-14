class CreateReds < ActiveRecord::Migration[5.2]
  def change
    create_table :reds do |t|
      t.text :name
      t.text :image
      t.integer :varietal_id
      t.text :url

      t.timestamps
    end
  end
end
