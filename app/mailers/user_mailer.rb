class UserMailer < ActionMailer::Base
  default from: "perfumeria@gmail.com"
  def contacto_email(contacto)
      @contacto = contacto
      @url  = 'http://example.com/login'
      email = 'perfumeria.leparis@gmail.com'
      mail(from: 'perfumeria@gmail.com', to: email, subject: 'Mensaje de Contacto')
  end
end
