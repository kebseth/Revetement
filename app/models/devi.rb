class Devi < MailForm::Base
  attribute :nom, :validate => true
  attribute :telephone, :validate => true
  attribute :email, :validate => true
  attribute :message, :validate => true
  def headers
    {
      :subject => "Demande de devis - tel: #{telephone} ",
      :to => "bouvet.revetements@gmail.com",
      :from => %("#{nom}" <#{email}>)
    }
  end
end
