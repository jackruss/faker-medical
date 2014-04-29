module Faker
  module Medical
    class DEA < Base
      class << self
        def dea(type = 'A', last_name = 'Smith')
          prefix = type + last_name[0]
          suffix = numerify('######')

          "#{prefix}#{suffix}#{check_digit(suffix)}"
        end

        private

        def check_digit(dea_suffix_number)
          n_array = dea_suffix_number.split('')
          first_number = n_array[0].to_i + n_array[2].to_i + n_array[4].to_i

          sec_number = n_array[1].to_i + n_array[3].to_i + n_array[5].to_i
          sec_number *= 2

          check_digit = first_number + sec_number
          check_digit.to_s.split('').last
        end
      end
    end
  end
end
