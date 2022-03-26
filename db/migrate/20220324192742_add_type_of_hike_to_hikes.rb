class AddTypeOfHikeToHikes < ActiveRecord::Migration[5.2]
  def change
    add_column :hikes, :type_of_hike, :string
  end
end
