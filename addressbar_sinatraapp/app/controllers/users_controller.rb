class UserController < ApplicationController

  get '/signup' do
    erb :'/users/signup'
  end

  post '/signup'do
      if params[:password] == params[:password_confirm]
          @user = User.create(name: params[:name], email: params[:email], password: params[:password])
          session[:user_id] = @user.id
          redirect to "/users/#{@user.id}"
      else
          redirect to "/signup"
      end
  end


end
