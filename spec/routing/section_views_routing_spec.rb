require "spec_helper"

describe SectionViewsController do
  describe "routing" do

    it "routes to #index" do
      get("/section_views").should route_to("section_views#index")
    end

    it "routes to #new" do
      get("/section_views/new").should route_to("section_views#new")
    end

    it "routes to #show" do
      get("/section_views/1").should route_to("section_views#show", :id => "1")
    end

    it "routes to #edit" do
      get("/section_views/1/edit").should route_to("section_views#edit", :id => "1")
    end

    it "routes to #create" do
      post("/section_views").should route_to("section_views#create")
    end

    it "routes to #update" do
      put("/section_views/1").should route_to("section_views#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/section_views/1").should route_to("section_views#destroy", :id => "1")
    end

  end
end
