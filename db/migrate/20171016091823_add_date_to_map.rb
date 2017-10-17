class AddDateToMap < ActiveRecord::Migration
  def change
    add_column :maps, :date, :date
    add_column :maps, :time, :datetime
  end
end
