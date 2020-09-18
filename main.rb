class User
    def initialize(username, password)
        @username = username
        @password = password

    end
end

class Public_User < User
    def initialize(username, password)
        super(username, password)
        @books = {
            on_loan:0,
            on_hold: 0,
            overdue: 0
        }
    end
end

class Administrator < User
end



list_of_users = [
    Public_User.new("Larry", "I-love-steaks"),
    Public_User.new("Paul", "fiddlesticks"),
    Public_User.new("John", "password"),
    Administrator.new("Mrs Leder", "I-am-the-library")
]

# loop do
#     puts "Enter your username"
#     username = gets.chomp
#     puts "Enter your password"
#     password = gets.chomp
# end