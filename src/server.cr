require "http/server"

port = (ENV["PORT"]? || "8080").to_i

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  context.response.print "hello from Crystal on orkestr"
end

address = server.bind_tcp "0.0.0.0", port
puts "Listening on http://#{address}"
server.listen
