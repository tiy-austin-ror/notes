require_relative '../lib/parser'

url = ARGV[0]

parser = Parser.new


if url.nil? || url.length.zero?
  raise "NO INPUT GIVEN"
else
  response = parser.parse(url)

  puts response.inspect
end
