require 'resque'

ActionMailer::Base.delivery_method = :sendmail

class AsyncMailer < ActionMailer::Base
  include Resque::Mailer
end
