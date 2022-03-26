require 'rails_helper'

RSpec.describe "Index endpoint" do
  context 'happy path' do
    it 'returns a JSON payload of hike data' do
      get "/api/v1/hey_croix"

      results = JSON.parse(response.body, symbolize_names: true)
      
    end
  end
end
