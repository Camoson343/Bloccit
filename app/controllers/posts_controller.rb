class PostsController < ApplicationController
  def index

    @posts = Post.all
  end

  def show
  end

  def new
    #7
    @post = Post.new
  end

  def edit
  end
end
