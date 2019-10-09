class ContactMailer < ApplicationMailer
  def contact
    mail(to: 'ri-ri-du35@hotmail.fr', subject: 'Web - Demande de devis')
  end
end
