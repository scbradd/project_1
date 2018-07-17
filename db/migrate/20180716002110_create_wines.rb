class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :color
      t.text :name
      t.text :region
      t.text :image

      t.timestamps
    end
  end
end
