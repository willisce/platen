require "spec_helper"

describe EntryTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/entry_types").should route_to("entry_types#index")
    end

    it "routes to #new" do
      get("/entry_types/new").should route_to("entry_types#new")
    end

    it "routes to #show" do
      get("/entry_types/1").should route_to("entry_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/entry_types/1/edit").should route_to("entry_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/entry_types").should route_to("entry_types#create")
    end

    it "routes to #update" do
      put("/entry_types/1").should route_to("entry_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/entry_types/1").should route_to("entry_types#destroy", :id => "1")
    end

  end
end
