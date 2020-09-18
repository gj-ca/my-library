class User
    # Giving READ access to username and password
    attr_reader :username, :password
    def initialize(username, password)
        @username = username
        @password = password
    end
end

# public user inherits from User
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

# administrator inherits from User
class Administrator < User
end


# Populating databse
list_of_users = [
    Public_User.new("Larry", "I-love-steaks"),
    Public_User.new("Paul", "fiddlesticks"),
    Public_User.new("John", "password"),
    Administrator.new("Mrs Leder", "I-am-the-library")
]

# Starting program loop
loop do
    puts "Enter your username"
    input_username = gets.chomp
    puts "Enter your password"
    input_password = gets.chomp
    # Saving a user variable by selecting a user that has a username of what we typed in
    # Select returns an array, we our usernames our unique so we have an array with only 1 element, hence the [0]
    user = list_of_users.select { |user| user.username == input_username }[0]

    #square bracketes for hashes
    # user[:username]
    # dot notation for classes
    # user.username

    if user.username == input_username && user.password == input_password
        puts "You are logged in test"
    else
        puts "incorrect"
    end
end