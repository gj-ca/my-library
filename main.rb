class User
    attr_reader :username, :password
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

loop do
    puts "Enter your username"
    input_username = gets.chomp
    puts "Enter your password"
    input_password = gets.chomp
    # Saving a user variable by selecting a user that has a username of what we typed in
    user = list_of_users.select { |user| user.username == input_username }[0]

    # dot notation for classes
    if user.username == input_username && user.password == input_password
        puts "You are logged in test"
    else
        puts "incorrect"
    end


    #square bracketes for hashes
    # user[:username]




    # if the username and the password matches our found user
    # if user[:username]
end