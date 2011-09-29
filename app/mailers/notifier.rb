class Notifier < ActionMailer::Base
  include Resque::Mailer
  default :from => "from@example.com"

  def test
    Rails.logger.info "sending test mail"
    Rails.logger.info ""
    mail(:to => "nap@localhost.local",
         :subject => "Testing mail")
  end
end
