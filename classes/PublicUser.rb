# public user inherits from User
require_relative "./User"

class PublicUser < User
    def initialize(username, password)
        super(username, password)
        @options = ["Borrow", "Return", "Search" ]
        @books = {
            on_loan:0,
            on_hold: 0,
            overdue: 0
        }
    end

    def exectuteOptions(input)
        case input
        when "Borrow"
            borrow
        when "Return"
            puts "Run the Return Code"
        when "Search"
            puts "Run the Search Code"
        else
            puts "Invalid"
        end
    end

    def borrow
        puts "Run the Borrow Code"
    end

    def return
    end

    # Class method: doesn't need instance data
    # method called like PublicUser.notAllowed
    def PublicUser.notAllowed
        puts "You can't do that"
    end

    # instnace method: needs instance data, must be called on an instance
    # user.helloName
    def helloName
        puts "Hello #{@name}"
    end
end