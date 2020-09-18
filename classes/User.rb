class User
    # Giving READ access to username and password
    attr_reader :username, :password
    def initialize(username, password)
        @username = username
        @password = password
    end

    def display_options
        puts "What would you like to do?"
        puts "Options: "
        puts @options
    end
end