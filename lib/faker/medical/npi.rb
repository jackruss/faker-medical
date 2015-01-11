module Faker
  module Medical
    class NPI < Base
      class << self
        def npi
          # Using the description of how to generate a number using the Luhn Algorithm from Wikipedia
          # http://en.wikipedia.org/wiki/Luhn_algorithm#Description
          x = rand(100000000..999999999)
          npi = add_checksum(x)
          npi
        end

        def valid?(num)

          # Using the alternative method - recompute the checksum digit

          num_without_checksum = num.to_i / 10
          new_num = add_checksum(num_without_checksum)

          new_num == num
        end

        private

        def add_checksum(num)
          num_array = int_split(num)
          checksum_array = [8,0,8,4,0].concat(num_array)

          checksum = 0
          num_array.each_with_index {|val, i| i % 2 == 0 ? checksum = checksum + val : checksum = checksum }
          # Multiply by 9
          checksum = checksum * 9
          # Create the check digit and push it onto the end
          num_array << checksum % 10

          num_array.join
        end

        def int_split(x)
          r=[x];r[0,1]=*r[0].divmod(10)while r[0]>9;r
        end
      end
    end
  end
end
