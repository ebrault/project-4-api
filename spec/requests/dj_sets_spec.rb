require 'rails_helper'

RSpec.describe "DjSets", type: :request do
  describe "GET /dj_sets" do
    it "works! (now write some real specs)" do
      get dj_sets_path
      expect(response).to have_http_status(200)
    end
  end
end
