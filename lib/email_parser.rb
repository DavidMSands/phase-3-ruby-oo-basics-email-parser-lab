class EmailAddressParser 
    def initialize strn
        @strn = strn 
    end

    def parse 
        @strn.split(/,?\s/).uniq
    end
end

email_addresses = "john@doe.com, person@somewhere.org, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)

pp parser.parse