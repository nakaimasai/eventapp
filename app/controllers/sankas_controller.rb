class SankaController < ApplicationController
  before_action :logged_in_user

  def create
    @micropost = Micropost.find(params[:micropost_id])
    unless @micropost.sanka?(current_user)
      @micropost.sanka(current_user)
      @micropost.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def destroy
    @micropost = Sanka.find(params[:id]).micropost
    if @micropost.sanka?(current_user)
      @micropost.unsanka(current_user)
      @micropost.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end
end
