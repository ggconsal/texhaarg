class ContactMailer < ApplicationMailer

	default from: "RegistracionSegura@texhaarg.com"

	def contact_email(contact)
		@contact = contact
		mail(to:@contact.con_mail, :subject => "Bienvenido" + " " + @contact.con_nya)
	end

end
