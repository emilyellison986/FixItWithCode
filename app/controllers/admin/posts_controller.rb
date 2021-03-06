class Admin::PostsController < Admin::ApplicationController
  inherit_resources

  def index
    @posts = Post.most_recent.all
  end

  def new
    @post = @current_admin.posts.build
  end
  
  def create
    @post = @current_admin.posts.build(params[:post])
    if @post.save
      flash[:success] = 'Your post has been created.'
      redirect_to admin_post_url(@post)
    else
      render :new
    end
  end

end