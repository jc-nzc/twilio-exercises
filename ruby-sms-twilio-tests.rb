require 'rubygems'
require 'twilio-ruby'
require 'json'

account_sid = 'xxx-xxx'
auth_token = 'xxx-xxx'
@client = Twilio::REST::Client.new(account_sid, auth_token)

# message = @client.messages.create(
#   body: 'Howdy',
#   messaging_service_sid: 'MG5a673edb126c81be7ffb60c5e521270d',
#   to: '+15129420727'
# )
# puts message.body

show_recent_messages = @client.messages.list(limit: 2)
# puts show_recent_messages.class
puts show_recent_messages
puts show_recent_messages.str.scan(/\(|\)|\w+/)
#
# show_recent_messages.each_with_index do |n, v|
#   puts "The index is #{n}"
#   puts "The value is #{v}"
# end

# puts show_recent_messages

# Below spits out the JSON Meta an Payload data... strange
# show_recent_messages = show_recent_messages.
# puts JSON.pretty_generate(show_recent_messages)

# show_recent_messages.each do |i|
#    puts "#{i}"
# end

# message_sid = 'SM570261eeb581466f8ade496f38f43a18'
# puts @client.messages(message_sid).fetch.body
