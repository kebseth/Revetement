class Devi < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => true
  attribute :message, :validate => true

  def headers
    {
      :subject => "Demande de devis",
      :to => "bouvet.richard@hotmail.fr",
      :from => "bouvet@revetement.fr"
    }
  end
end
