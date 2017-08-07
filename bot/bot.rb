require "#{Rails.root}/app/models/application_record.rb"

class Bot < SlackRubyBot::Bot

  help do
    title 'I\'m Bot Boy'
    desc "This is the foundation of a basic bot for you to modify."

    command "ping" do
      desc "this will respond with 'pong' to confirm that it's working"
    end

    command 'logic' do
      desc "Removes your last shared message"
    end
  end

  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end

  # This command take log and the next word used to find the question in reference and add an answer to the db for the user.
  command 'logic' do |client, data, match|
    logic(client, data, match)
  end


  # ---=== All business logic below this line. Commands go above this break. ===---

  def self.logic(client, data, match)
    text = "This is how you need to brake out the logic."
    client.say(text: text, channel: data.channel)
  end

end
