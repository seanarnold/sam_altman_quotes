class QuoteBroadcaster

  WEBHOOK_URL = ENV['SLACK_WEBHOOK_URL']

  def self.send_to_slack
    notifier = Slack::Notifier.new WEBHOOK_URL
    notifier.ping Quote.random_quote
  end

end