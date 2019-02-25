require 'rails_helper'
require 'random_data'

RSpec.describe QuestionsController, type: :controller do

  let(:my_question) do
    Question.create!(
      id: 1,
      title: RandomData.random_sentence,
      body: RandomData.random_paragraph,
      resolved: false
    )
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_question] to @questions" do
      get :index
      expect(assigns(:questions)).to eq([my_question])
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit, params: {id: my_question.id }
      expect(response).to have_http_status(:success)
    end

    it "renders the #edit view" do
      get :edit, params: {id: my_question.id}
      expect(response).to render_template :edit
    end

    it "assigns post to be updated to @question" do
      get :edit, params: {id: my_question.id}
      question_instance = assigns(:question)
      expect(question_instance.id).to eq my_question.id
      expect(question_instance.title).to eq my_question.title
      expect(question_instance.body).to eq my_question.body
    end

  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it "instantiates @question" do
      get :new
      expect(assigns(:question)).not_to be_nil
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, params: {id: my_question.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, params: {id: my_question.id}
      expect(response).to render_template :show
    end

    it "assigns my_question to @question" do
      get :show, params: {id: my_question.id}
      expect(assigns(:question)).to eq(my_question)
    end
  end

  describe "QUESTION create" do
    it "increases the number of Questions by 1" do
      expect{post :create, params: {question: {title: RandomData.random_sentence, body: RandomData.random_paragraph}}}.to change(Question, :count).by(1)
    end

    it "assigns the new question to @question" do
      question :create, params: {question: { title: RandomData.random_sentence, body: RandomData.random_paragraph }}
      expect(assigns(:question)).to eq Question.last
    end

    it "redirects to the new question" do
      post: create, params: {post: {title: RandomData.random_sentence, body: RandomData.random_paragraph}}
      expect(response).to redirect_to Question.last
    end
  end

  describe "PUT update" do
    it "updates qustion with expected attributes" do
      new_title = RandomData.random_sentence
      new_body = RandomData.random_paragraph

      put :update, params: {id: my_question.id, post: {title: new_title, body: new_body}}

      updated_question = assigns(:post)
      expect(updated_question.id).to eq my_post.id
      expect(updated_question.title).to eq new_title
      expect(updated_question.body).to eq new_body
    end

    it "redirects to the updated post" do
      new_title = RandomData.random_sentence
      new_body = RandomData.random_paragraph

      put :update, params: {id: my_question.id, post: {title: new_title, body: new_body}}
      expect(response).to redirect_to my_question
    end

    describe "DELETE destroy" do
      it "deletes the question" do
        delete :destroy, params: {id: my_question.id}
        count = Post.where({id: my_question.id}).size
        expect(count).to eq 0
      end

      it "redirects to questions index" do
        delete :destroy, params: {id: my_post.id}

        expect(response).to redirect_to posts_path
      end
    end
  end
