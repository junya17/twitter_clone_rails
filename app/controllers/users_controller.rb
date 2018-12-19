class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy, :like, :unlike]
	before_action :authenticate_user!, except: [:index, :show, :destroy, :like, :unlike , :following, :followers]

  def show
    @tweeets = @user.tweeets.all
    @users = User.all
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user)
    end
end