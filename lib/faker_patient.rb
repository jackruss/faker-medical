module Faker
  class Patient
    class << self
      # English social security number has the format xxx-xx-xxxx 
      def gender
        gender = ['M','F']
        gender[rand(2)]
      end
      
      def dob  
        Date.parse("#{rand(12) + 1}/#{rand(28) + 1}/19#{format("%02d", rand(99))}" )
      end
      
    end
      
   end
end