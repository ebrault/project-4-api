require "rails_helper"

RSpec.describe DjSetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dj_sets").to route_to("dj_sets#index")
    end


    it "routes to #show" do
      expect(:get => "/dj_sets/1").to route_to("dj_sets#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dj_sets").to route_to("dj_sets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dj_sets/1").to route_to("dj_sets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dj_sets/1").to route_to("dj_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dj_sets/1").to route_to("dj_sets#destroy", :id => "1")
    end

  end
end
