#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      # redirect_to admin_url
      redirect_to perfumes_path
    else
      redirect_to login_url, alert: "Usuario invalido o password erroneo."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root, notice: "Saliste correctamente"
  end
end
