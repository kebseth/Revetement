class Devi < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => true
  attribute :message, :validate => true

  def headers
    {
      :subject => "Contact Form",
      :to => "bouvet.richard@hotmail.fr",
      :from => "bouvet@revetement.fr"
    }
  end
end
