# encoding: UTF-8
require 'open-uri'
class RefreshQuotes

  def self.refresh
    Quote.delete_all
    url = "http://blog.samaltman.com/the-days-are-long-but-the-decades-are-short"
    @page = Nokogiri::HTML(open(url).read, nil, 'utf-8')
    quotes = @page.css(".post-body p")
    quotes = quotes.slice(1, quotes.count)
    quotes.each do |quote|
      text = quote.content
      if text.present? && Quote.create(text: text)
        Rails.logger.info("Created quote starting with #{text.slice(0..30)}")
      else
        Rails.logger.info("failed to create quote")
      end
    end
    Rails.logger.info("Finished creating quotes")
  end

end