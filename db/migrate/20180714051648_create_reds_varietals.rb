class CreateRedsVarietals < ActiveRecord::Migration[5.2]
  def change
    create_table :reds_varietals, :id => false do |t|
      t.integer :reds_id
      t.integer :varietal_id
      t.integer :favouritewines_id
    end
  end
end
