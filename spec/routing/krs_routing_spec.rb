require "rails_helper"

RSpec.describe KrsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/krs").to route_to("krs#index")
    end

    it "routes to #new" do
      expect(:get => "/krs/new").to route_to("krs#new")
    end

    it "routes to #show" do
      expect(:get => "/krs/1").to route_to("krs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/krs/1/edit").to route_to("krs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/krs").to route_to("krs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/krs/1").to route_to("krs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/krs/1").to route_to("krs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/krs/1").to route_to("krs#destroy", :id => "1")
    end

  end
end
