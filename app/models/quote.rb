class Quote < ActiveRecord::Base

  def self.random_quote
    Quote.all.sample.text
  end
end
