require 'rails_helper'

RSpec.describe "Professors", type: :request do
  describe "GET /professors" do
    it "works! (now write some real specs)" do
      get professors_path
      expect(response).to have_http_status(200)
    end
  end
end
