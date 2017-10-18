class AddImageToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :image, :string
  end
end
