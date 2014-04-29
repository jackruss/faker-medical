module Faker
  module Medical
    class NPI < Base
      class << self
        def npi
          x = []

          10.times do
            x << rand(10)
          end

          x.join
        end

        # TODO: Use the Luhn algorithm to validate the NPI (by prefixing 80840)
        def valid?(num)
          odd = false
          num.to_s.gsub(/\D/,'').reverse.split('').map(&:to_i).collect { |d|
            d *= 2 if odd = !odd
            d > 9 ? d - 9 : d
          }.inject(:+) % 10 == 0
        end
      end
    end
  end
end
