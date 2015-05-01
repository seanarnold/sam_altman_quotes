== Sam Altman Quotes

Sam Altman's blog 'The days are long but the decades are short' was great.
If you haven't read it yet, you should check it out here: http://blog.samaltman.com/the-days-are-long-but-the-decades-are-short .

It contains a lot of advice that I think is really important to read again & again.

To help aid this I created this quick Rails app to Webhook one of the 32 learnings to a Slack channel, with the idea being that you'd run the Rake task daily.

1. Create a Webhook integration in Slack (https://api.slack.com/incoming-webhooks)
2. Deploy the Rails app somewhere. Cloud 66 or Heroku make this super easy.
3. Set the `SLACK_WEBHOOK_URL` environment variable.
4. Run the refresh rake task to seed the DB. `rake quote:refresh`
5. Run the `rake quote:send_daily_quote` to send a quote to you Slack channel defined in the integration.

We've set the CRON job to run daily at 9:30am.

If it all works well you should be greeted with a quote in your Slack channel.
![Screenshot](http://imgur.com/FWbtnRv)