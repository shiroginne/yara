require 'rails_helper'

RSpec.describe PackagesController, type: :controller do
  describe 'GET #dependencies' do
    it 'returnes something' do
      get :dependencies, params: { id: "forever", format: :json }

      expect(response.status).to eq(200)
    end
  end
end
