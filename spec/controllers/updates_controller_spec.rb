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

describe UpdatesController do

  # This should return the minimal set of attributes required to create a valid
  # Update. As you add validations to Update, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "desc" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UpdatesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all updates as @updates" do
      update = Update.create! valid_attributes
      get :index, {}, valid_session
      assigns(:updates).should eq([update])
    end
  end

  describe "GET show" do
    it "assigns the requested update as @update" do
      update = Update.create! valid_attributes
      get :show, {:id => update.to_param}, valid_session
      assigns(:update).should eq(update)
    end
  end

  describe "GET new" do
    it "assigns a new update as @update" do
      get :new, {}, valid_session
      assigns(:update).should be_a_new(Update)
    end
  end

  describe "GET edit" do
    it "assigns the requested update as @update" do
      update = Update.create! valid_attributes
      get :edit, {:id => update.to_param}, valid_session
      assigns(:update).should eq(update)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Update" do
        expect {
          post :create, {:update => valid_attributes}, valid_session
        }.to change(Update, :count).by(1)
      end

      it "assigns a newly created update as @update" do
        post :create, {:update => valid_attributes}, valid_session
        assigns(:update).should be_a(Update)
        assigns(:update).should be_persisted
      end

      it "redirects to the created update" do
        post :create, {:update => valid_attributes}, valid_session
        response.should redirect_to(Update.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved update as @update" do
        # Trigger the behavior that occurs when invalid params are submitted
        Update.any_instance.stub(:save).and_return(false)
        post :create, {:update => { "desc" => "invalid value" }}, valid_session
        assigns(:update).should be_a_new(Update)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Update.any_instance.stub(:save).and_return(false)
        post :create, {:update => { "desc" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested update" do
        update = Update.create! valid_attributes
        # Assuming there are no other updates in the database, this
        # specifies that the Update created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Update.any_instance.should_receive(:update_attributes).with({ "desc" => "" })
        put :update, {:id => update.to_param, :update => { "desc" => "" }}, valid_session
      end

      it "assigns the requested update as @update" do
        update = Update.create! valid_attributes
        put :update, {:id => update.to_param, :update => valid_attributes}, valid_session
        assigns(:update).should eq(update)
      end

      it "redirects to the update" do
        update = Update.create! valid_attributes
        put :update, {:id => update.to_param, :update => valid_attributes}, valid_session
        response.should redirect_to(update)
      end
    end

    describe "with invalid params" do
      it "assigns the update as @update" do
        update = Update.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Update.any_instance.stub(:save).and_return(false)
        put :update, {:id => update.to_param, :update => { "desc" => "invalid value" }}, valid_session
        assigns(:update).should eq(update)
      end

      it "re-renders the 'edit' template" do
        update = Update.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Update.any_instance.stub(:save).and_return(false)
        put :update, {:id => update.to_param, :update => { "desc" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested update" do
      update = Update.create! valid_attributes
      expect {
        delete :destroy, {:id => update.to_param}, valid_session
      }.to change(Update, :count).by(-1)
    end

    it "redirects to the updates list" do
      update = Update.create! valid_attributes
      delete :destroy, {:id => update.to_param}, valid_session
      response.should redirect_to(updates_url)
    end
  end

end
