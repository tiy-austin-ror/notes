require_relative '../lib/parser'

OK = "200 OK\n"
NOT_FOUND = "404 NOT FOUND\n"

url = ARGV[0..2].join(" ")
parser = Parser.new


def res_ok
  puts OK
  puts
end

def get_user(all_users, id)
  all_users[id.to_i - 1]
end

if url.nil? || url.length.zero?
  raise "NO INPUT GIVEN"
else
  users = [
    "John",
    "Jane",
    "Steve",
    "Sarah"
  ]

  begin
    response = parser.parse(url)

    if response[:resource] == "random"
      res_body = users.sample

      res_ok
      puts res_body

    elsif response[:resource] == "users"
      if response[:id]

        if response[:action] == "upcase"
          res_body = get_user(users, response[:id]).upcase
        elsif response[:action].nil?
          res_body = get_user(users, response[:id])
        else
          puts NOT_FOUND
          exit
        end

        res_ok
        puts res_body
      else
        res_ok
        users.each.with_index do |user, index|
          puts "#{index + 1} - #{user}"
        end
      end
    else
      puts NOT_FOUND
    end
  rescue StandardError => error
    puts "500 Server Error"
    puts
    puts error.inspect
  end
end
