require 'rails_helper'

RSpec.describe Hike do
  context 'validations' do
    it { should validate_presence_of(:hike_name) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:website) }
    it { should validate_presence_of(:description) }
  end
end
