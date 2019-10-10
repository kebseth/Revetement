class Devi < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => true
  attribute :message, :validate => true
  validates :email, presence: true, :message => "Veuillez rentrer une adresse mail valide"
  def headers
    {
      :subject => "Demande de devis",
      :to => "bouvet.richard@hotmail.fr",
      :from => %("#{name}" <#{email}>)
    }
  end
end
