# frozen_string_literal: true

class MailRecipientRecorder
  def self.last_recipients
    Thread.current[:last_recipients] || []
  end

  def self.delivering_email(message)
    Thread.current[:last_recipients] = message.to
  end
end
