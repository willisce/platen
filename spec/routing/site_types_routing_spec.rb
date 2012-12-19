require "spec_helper"

describe SiteTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/site_types").should route_to("site_types#index")
    end

    it "routes to #new" do
      get("/site_types/new").should route_to("site_types#new")
    end

    it "routes to #show" do
      get("/site_types/1").should route_to("site_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/site_types/1/edit").should route_to("site_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/site_types").should route_to("site_types#create")
    end

    it "routes to #update" do
      put("/site_types/1").should route_to("site_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/site_types/1").should route_to("site_types#destroy", :id => "1")
    end

  end
end
