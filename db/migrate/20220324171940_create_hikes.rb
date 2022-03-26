class CreateHikes < ActiveRecord::Migration[5.2]
  def change
    create_table :hikes do |t|
      t.string :hike_name
      t.string :location
      t.string :website
      t.string :description
      t.string :allows_camping
      t.string :reservations_required

      t.timestamps
    end
  end
end
