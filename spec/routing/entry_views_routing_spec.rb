require "spec_helper"

describe EntryViewsController do
  describe "routing" do

    it "routes to #index" do
      get("/entry_views").should route_to("entry_views#index")
    end

    it "routes to #new" do
      get("/entry_views/new").should route_to("entry_views#new")
    end

    it "routes to #show" do
      get("/entry_views/1").should route_to("entry_views#show", :id => "1")
    end

    it "routes to #edit" do
      get("/entry_views/1/edit").should route_to("entry_views#edit", :id => "1")
    end

    it "routes to #create" do
      post("/entry_views").should route_to("entry_views#create")
    end

    it "routes to #update" do
      put("/entry_views/1").should route_to("entry_views#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/entry_views/1").should route_to("entry_views#destroy", :id => "1")
    end

  end
end
