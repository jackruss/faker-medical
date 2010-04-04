module Faker
  class Npi
    class << self
      def npi
        x = []
        10.times do
          x << rand(10)
        end
        x.join
      end
      
      def check_digits? num
        odd = false
        num.to_s.gsub(/\D/,'').reverse.split('').map(&:to_i).collect { |d|
          d *= 2 if odd = !odd
          d > 9 ? d - 9 : d
        }.sum % 10 == 0
      end
      
    end
  end
end