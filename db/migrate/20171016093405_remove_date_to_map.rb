class RemoveDateToMap < ActiveRecord::Migration
  def change
    remove_column :maps, :date, :date
  end
end
