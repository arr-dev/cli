require "./app"
require "colorize"

server = HTTP::Server.new("127.0.0.1", 8080, [
  HTTP::ErrorHandler.new,
  HTTP::LogHandler.new,
  LuckyWeb::RouteHandler.new,
])

puts "Listening on http://127.0.0.1:8080...".colorize(:green)

server.listen