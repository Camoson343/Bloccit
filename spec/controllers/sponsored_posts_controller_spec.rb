require 'rails_helper'

RSpec.describe SponsoredPostsController, type: :controller do

  let(:my_sponsoredpost) {SponsoredPost.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph)}

  describe "GET #show" do
    it "returns http success" do
      get :show, params: {id: my_sponsoredpost.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, params: {id: my_sponsoredpost.id}
      expect(response).to render_template :show
    end

    it "assigns my_sponsoredpost to @sponsoredpost" do
      get :show, params: {id: my_sponsoredpost.id}
      expect(assigns(:sponsoredpost)).to eq(my_sponsoredpost)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(assigns(:topic)).not_to be_nil
    end

    it "initializes @sponsoredpost" do
    get :new
    expect(assigns(:topic)).not_to be_nil
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
