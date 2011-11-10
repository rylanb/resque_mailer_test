require 'resque'

class AsyncMailer < ActionMailer::Base
  include Resque::Mailer
end
