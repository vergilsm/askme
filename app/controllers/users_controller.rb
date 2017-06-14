class UsersController < ApplicationController
  def index
    @users = [
      User.new(
        id: 1,
        name: 'Dima',
        username: 'vergilsm',
        avatar_url: 'https://avatarko.ru/img/avatar/1/computer_buben.jpg'
      ),
      User.new(
        id: 2,
        name: 'Misha',
        username: 'aristofun'
      )
    ]
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

    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('14.06.2017')),
      Question.new(text: 'Как прошел день?', created_at: Date.parse('14.06.2017')),
    ]

    @new_question = Question.new
  end
end
