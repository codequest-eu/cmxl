module Cmxl
  module Fields
    class AccountIdentification < Field
      self.tag = 25
      self.parser = /
        (?<bank_code>\w{8})
        \/
        (?<country>[a-zA-Z]{2})
        (?<account_number>\d{26})
      /x

      def iban
        "#{self.country}#{self.ban}"
      end
    end
  end
end
