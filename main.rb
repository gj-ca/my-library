require_relative "./classes/PublicUser"
require_relative "./classes/Administrator"

# Populating databse
list_of_users = [
    PublicUser.new("Larry", "I-love-steaks"),
    PublicUser.new("Paul", "fiddlesticks"),
    PublicUser.new("John", "password"),
    Administrator.new("Mrs Leder", "I-am-the-library")
]

# Starting program loop
loop do
    puts "Enter your username"
    input_username = gets.chomp
    puts "Enter your password"
    input_password = gets.chomp
    
    # Saving a user variable by selecting a user that has a username of what we typed in
    # it is the instance of the User class
    user = list_of_users.find { |user| user.username == input_username }

    #square bracketes for hashes
    # user[:username]
    # dot notation for classes
    # user.username

    if user.username == input_username && user.password == input_password
        # different options for different type of user
        user.display_options
        user.exectuteOptions(gets.chomp)
    else
        puts "incorrect"
    end
end