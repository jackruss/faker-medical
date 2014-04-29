module Faker
  module Medical
    class SSN < Base
      class << self
        # English social security number has the format xxx-xx-xxxx
        def ssn
          numerify('###-##-####')
        end
      end
    end
  end
end
