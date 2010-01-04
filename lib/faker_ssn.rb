module Faker
  class Ssn
    class << self
      # English social security number has the format xxx-xx-xxxx 
      def en_ssn
        Faker.numerify('###-##-####')
      end
    end
      
   end
end