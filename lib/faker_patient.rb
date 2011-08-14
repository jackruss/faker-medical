# mixin random time function from http://jroller.com/obie/entry/random_times_for_rails
class Time

  def self.random(params={})
    years_back = params[:year_range] || 5
    year = (rand * (years_back)).ceil + (Time.now.year - years_back)
    month = (rand * 12).ceil
    day = (rand * 31).ceil
    series = [date = Time.local(year, month, day)]
    if params[:series]
      params[:series].each do |some_time_after|
        series << series.last + (rand * some_time_after).ceil
      end
      return series
    end
    date
  end

end

module Faker
  class Patient
    class << self
      # English social security number has the format xxx-xx-xxxx 
      def gender
        gender = ['M','F']
        gender[rand(2)]
      end
      
      def dob  
        Time.random(:year_range => 80)
        #Date.parse("#{rand(12) + 1}/#{rand(27) + 1}/19#{format("%02d", rand(99))}" )
      end
      
      def phone_number
        Faker::Base.numerify("###-###-####")
      end
      
      
    end
      
   end
end