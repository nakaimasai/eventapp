class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def home
    @microposts = Micropost.all.paginate(page: params[:page])
  end

  def show
    @microposts = Micropost.find_by(id:params[:id])
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "投稿しました"
      redirect_to kaisai_path
    else
      @feed_items = []
      render 'static_pages/kaisai'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "削除しました"
    redirect_to request.referrer || root_url
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :picture, :title)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
