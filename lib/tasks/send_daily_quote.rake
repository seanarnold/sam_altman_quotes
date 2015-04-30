desc "Send a quote to the Slack Channel"
namespace :quote  do
  task :send_daily_quote => :environment do
    Rails.logger.info "Sending daily quote."
    QuoteBroadcaster.send_to_slack
  end
end