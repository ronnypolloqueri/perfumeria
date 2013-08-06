class ContactoController < ApplicationController
  def new
  	@contacto = Contacto.new
  end

  def create
  	@contacto = Contacto.new
  	@contacto.nombre = params[:nombre]
  	@contacto.email = params[:email]
  	@contacto.mensaje = params[:mensaje]
  	# respond_to do |format|
  	  if @contacto.save
  	    UserMailer.contacto_email(@contacto).deliver
  	    # format.html { redirect_to @user, notice: 'User was successfully created.' }
  	    # format.json { render action: 'show', status: :created, location: @user }
  	  # else
  	  #   format.html { render action: 'new' }
  	  #   format.json { render json: @user.errors, status: :unprocessable_entity }
  	  end
  	# end
  end
end
