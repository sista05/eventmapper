class AddColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :content, :text
    add_column :events, :image, :string
    add_column :events, :title, :string
  end
end
