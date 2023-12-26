class PagesController < ApplicationController
  before_action :require_user

  def home
    @user = User.all
    @message = Message.new
    @messages = Message.custom_display
  end
end
