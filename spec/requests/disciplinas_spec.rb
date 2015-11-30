require 'rails_helper'

RSpec.describe "Disciplinas", type: :request do
  describe "GET /disciplinas" do
    it "works! (now write some real specs)" do
      get disciplinas_path
      expect(response).to have_http_status(200)
    end
  end
end
