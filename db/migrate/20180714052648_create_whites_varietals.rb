class CreateWhitesVarietals < ActiveRecord::Migration[5.2]
  def change
    create_table :whites_varietals, :id => false do |t|
      t.integer :whites_id
      t.integer :varietal_id
      t.integer :favouritewines_id
    end
  end
end
