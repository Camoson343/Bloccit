class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def edit
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resloved = params[:question][:resolved]

    if @question.save
      flash[:notice] = "Question was saved"
      redirect_to @question
    else
      flash.now[:alert] = "There was an error saving the question."
      render :new
    end
  end

  def update
    @question = Question.find(params[:id])
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resloved = params[:question][:resolved]

    if @question.save
      flash[:notice] = "Question was updated"
      redirect_to @question
    else
      flash.now[:alert] = "There was an error updating the question."
      render :edit
    end
   end

  def destroy
    if @question.destroy
      flash[:notice] = "\"#{@question.title}\" was deleted successfully."
      redirect_to posts_path
    else
      flash.now[:alert] = "There was an error deleting the post."
      render :show 
    end
  end
