class User
    def initialize(username, password)
        @username = username
        @password = password
        @books = {
            on_loan:0,
            on_hold: 0,
            overdue: 0
        }
    end
end

list_of_users = [
    User.new("Larry", "I-love-steaks"),
    User.new("Paul", "fiddlesticks"),
    User.new("John", "password"),
]

# loop do
#     puts "Enter your username"
#     username = gets.chomp
#     puts "Enter your password"
#     password = gets.chomp
# end

p list_of_users[0].class