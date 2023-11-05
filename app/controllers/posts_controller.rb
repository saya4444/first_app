class PostsController < ApplicationController
  def index
    @posts = Post.all  # すべてのレコードを@postsに代入
  end

  def new
    
  end

  def create
    @post = Post.new(content: params[:content])
    # redirect_to "/post"
    @post.save
      # redirect_to '/posts/show' 
    # else
    @posts = Post.all
    render 'index'
    # end
  end

end