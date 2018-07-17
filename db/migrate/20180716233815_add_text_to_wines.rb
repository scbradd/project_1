class AddTextToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :image, :text
  end
end
