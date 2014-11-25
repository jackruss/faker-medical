module Faker
  module Medical
    class SSN < Base

      SSN_REGEX = /(?!(000|666|9))\d{3}(-|\s)?(?!00)\d{2}(-|\s)?(?!0000)\d{4}/

      class << self
        # English social security number has the format xxx-xx-xxxx
        # numerify won't always generate an SSN that matches correctly
        # repeat until we have a valid SSN
        def ssn
          loop do
            val = numerify('###-##-####')
            return val if SSN_REGEX =~ val
          end
        end
      end
    end
  end
end
