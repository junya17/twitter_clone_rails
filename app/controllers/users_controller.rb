# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy like unlike follow follower]
  before_action :authenticate_user!, except: %i[index show destroy like unlike following followers follow follower]

  def show
    @tweeets = @user.tweeets.all
    @users = User.all
   end

  def follow
    @users = User.all
  end

  def follower
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
