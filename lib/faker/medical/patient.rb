require 'faker/medical/extensions/time'

module Faker
  module Medical
    class Patient < Base
      class << self
        def date_of_birth
          Time.random(:year_range => 80)
          #Date.parse("#{rand(12) + 1}/#{rand(27) + 1}/19#{format("%02d", rand(99))}" )
        end
        alias_method :dob, :date_of_birth

        def gender
          %w[M F].sample
        end

        def phone_number
          Faker::PhoneNumber.phone_number
        end
      end
    end
  end
end
