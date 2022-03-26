class AddTotalMilesToHikes < ActiveRecord::Migration[5.2]
  def change
    add_column :hikes, :total_miles, :float
  end
end
