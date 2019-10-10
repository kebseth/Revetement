class Devi < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /.*@.*\..*/, message: "Veuillez rentrer une adresse mail valide"
  attribute :message, :validate => true
  def headers
    {
      :subject => "Demande de devis",
      :to => "bouvet.richard@hotmail.fr",
      :from => %("#{name}" <#{email}>)
    }
  end
end
