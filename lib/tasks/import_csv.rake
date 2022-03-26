namespace :import_csv do
  require 'csv'
  desc "Import customer data from csv"
  task hike_data: :environment do
    hikes_data
  end

  def hikes_data
    CSV.foreach('db/data/CroixMountain - Sheet1.csv', headers: true) do |row|
      Hike.create!(row.to_hash)
    end
    ActiveRecord::Base.connection.reset_pk_sequence!('transactions')
  end
end
