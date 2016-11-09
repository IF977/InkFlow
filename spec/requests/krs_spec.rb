require 'rails_helper'

RSpec.describe "Krs", type: :request do
  describe "GET /krs" do
    it "works! (now write some real specs)" do
      get krs_path
      expect(response).to have_http_status(200)
    end
  end
end
