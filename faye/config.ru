require 'faye'

bayeux = Faye::RackAdapter.new(:mount => '/faye', :timeout => 25)

bayeux.bind(:handshake) do |client_id|
  puts '*' * 10
  puts "HANDSHANKE"
  puts "client_id: #{client_id}"
end

bayeux.bind(:subscribe) do |client_id, channel|
  puts '*' * 10
  puts "SUBSCRIBE"
  puts "client_id: #{client_id}"
  puts "channel: #{channel}"
end

bayeux.bind(:unsubscribe) do |client_id, channel|
  puts '*' * 10
  puts "UNSUBSCRIBE"
  puts "client_id: #{client_id}"
  puts "channel: #{channel}"
end

bayeux.bind(:publish) do |client_id, channel, data|
  puts '*' * 10
  puts "PUBLISH"
  puts "client_id: #{client_id}"
  puts "channel: #{channel}"
  puts "data: #{data}"
end

bayeux.bind(:disconnect) do |client_id|
  puts '*' * 10
  puts "DISCONNECT"
  puts "client_id: #{client_id}"
end

bayeux.listen(9292)