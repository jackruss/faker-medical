module Faker
  class Patient
    class << self
      # English social security number has the format xxx-xx-xxxx 
      def gender
        gender = ['M','F']
        gender[rand(2)]
      end
    end
      
   end
end