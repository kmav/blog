class PostsController < ApplicationController
  def new
    
  end
  
  def create
    @post = Post.new(post_params)
 
    @post.save
    redirect_to @post
    #  render text: params[:post].inspect
  end
  
  def show
    @post = Post.find(params[:id])
  end
 
private
  def post_params
    params.require(:post).permit(:title, :text)
#    params.require(:post)
  end
end
