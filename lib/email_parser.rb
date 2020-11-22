require 'pry'

# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        arr_email = @email_addresses.split
        arr_email.collect do |email|
            email.split(",")
        end
        .flatten.uniq
    end
        
end

email_addresses = "john@doe.com person@somewhere.org, person@somewhere.org sam@aol.com"
parser = EmailAddressParser.new(email_addresses)


