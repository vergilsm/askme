class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: 'Dima',
      username: 'vergilsm',
      avatar_url: 'https://avatarko.ru/img/avatar/1/computer_buben.jpg'
    )
  end
end
