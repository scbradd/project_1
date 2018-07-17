class AddRegionToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :region, :string
  end
end
