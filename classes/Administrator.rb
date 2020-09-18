# administrator inherits from User
require_relative "./User"

class Administrator < User
    def initialize(username, password)
        super(username, password)
        @options = ["Create", "Search", "Update", "Delete"]
    end

    def exectuteOptions(input)
        case input
        when "Create"
            puts "Run the Create Code"
        when "Update"
            puts "Run the Update Code"
        when "Delete"
            puts "Run the Delete Code"
        else
            puts "Invalid Input"
        end
    end
end