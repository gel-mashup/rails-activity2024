class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: %i[show update]
  # after_action :set_as_viewed
  # function index {}
  def index
    @user = current_user
    @greet = Capitalize.new(private_greetings).call
    @posts = Post.order(:id)
  end

  def show
    # show post here
  end

  def preview
    # preview of post
  end

  def new
    @new_post = Post.new
  end

  def create
    params = {
      message: post_params[:message],
      author_id: current_user.id,
      user_id: User.first.id
    }
    new_post = Post.new(params)
    if new_post.save
      redirect_to posts_path
    else
      flash[:alert] = new_post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit
    # forms
  end

  def update
    # for saving purpose
    if @post.update(post_params)
      redirect_to posts_path
    else
      flash[:alert] = new_post.errors.full_messages
      redirect_to post_path(@post)
    end

  end

  private
    def private_greetings
      "welcome aboard #{@user.name}!!!"
    end

    def set_post
      post_id = params[:id]
      @post = Post.find post_id
    end

    def post_params
      params.require(:post).permit(:message, :author)
    end

end
