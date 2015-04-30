desc "Send a quote to the Slack Channel"
namespace :quote  do
  task :refresh => :environment do
    Rails.logger.info "Refreshing Quotes."
    RefreshQuotes.refresh
  end
end