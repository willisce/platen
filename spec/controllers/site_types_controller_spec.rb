require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SiteTypesController do

  # This should return the minimal set of attributes required to create a valid
  # SiteType. As you add validations to SiteType, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SiteTypesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all site_types as @site_types" do
      site_type = SiteType.create! valid_attributes
      get :index, {}, valid_session
      assigns(:site_types).should eq([site_type])
    end
  end

  describe "GET show" do
    it "assigns the requested site_type as @site_type" do
      site_type = SiteType.create! valid_attributes
      get :show, {:id => site_type.to_param}, valid_session
      assigns(:site_type).should eq(site_type)
    end
  end

  describe "GET new" do
    it "assigns a new site_type as @site_type" do
      get :new, {}, valid_session
      assigns(:site_type).should be_a_new(SiteType)
    end
  end

  describe "GET edit" do
    it "assigns the requested site_type as @site_type" do
      site_type = SiteType.create! valid_attributes
      get :edit, {:id => site_type.to_param}, valid_session
      assigns(:site_type).should eq(site_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SiteType" do
        expect {
          post :create, {:site_type => valid_attributes}, valid_session
        }.to change(SiteType, :count).by(1)
      end

      it "assigns a newly created site_type as @site_type" do
        post :create, {:site_type => valid_attributes}, valid_session
        assigns(:site_type).should be_a(SiteType)
        assigns(:site_type).should be_persisted
      end

      it "redirects to the created site_type" do
        post :create, {:site_type => valid_attributes}, valid_session
        response.should redirect_to(SiteType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved site_type as @site_type" do
        # Trigger the behavior that occurs when invalid params are submitted
        SiteType.any_instance.stub(:save).and_return(false)
        post :create, {:site_type => { "name" => "invalid value" }}, valid_session
        assigns(:site_type).should be_a_new(SiteType)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SiteType.any_instance.stub(:save).and_return(false)
        post :create, {:site_type => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested site_type" do
        site_type = SiteType.create! valid_attributes
        # Assuming there are no other site_types in the database, this
        # specifies that the SiteType created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SiteType.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => site_type.to_param, :site_type => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested site_type as @site_type" do
        site_type = SiteType.create! valid_attributes
        put :update, {:id => site_type.to_param, :site_type => valid_attributes}, valid_session
        assigns(:site_type).should eq(site_type)
      end

      it "redirects to the site_type" do
        site_type = SiteType.create! valid_attributes
        put :update, {:id => site_type.to_param, :site_type => valid_attributes}, valid_session
        response.should redirect_to(site_type)
      end
    end

    describe "with invalid params" do
      it "assigns the site_type as @site_type" do
        site_type = SiteType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SiteType.any_instance.stub(:save).and_return(false)
        put :update, {:id => site_type.to_param, :site_type => { "name" => "invalid value" }}, valid_session
        assigns(:site_type).should eq(site_type)
      end

      it "re-renders the 'edit' template" do
        site_type = SiteType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SiteType.any_instance.stub(:save).and_return(false)
        put :update, {:id => site_type.to_param, :site_type => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested site_type" do
      site_type = SiteType.create! valid_attributes
      expect {
        delete :destroy, {:id => site_type.to_param}, valid_session
      }.to change(SiteType, :count).by(-1)
    end

    it "redirects to the site_types list" do
      site_type = SiteType.create! valid_attributes
      delete :destroy, {:id => site_type.to_param}, valid_session
      response.should redirect_to(site_types_url)
    end
  end

end
