class SessionsController < ApplicationController
  include CurrenrUserConcern

  def create
    user = User
            .find_by(email: params["user"]["email"])
            .try(:authenticate, params["user"]["password"])

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    if @currentuser
      render json: {
        logged_in: true,
        user: @current_user
      }
  end
end
