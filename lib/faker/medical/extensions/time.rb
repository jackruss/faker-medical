# mixin random time function from http://jroller.com/obie/entry/random_times_for_rails
# updated from: http://www.jroller.com/obie/entry/quickly_generate_random_dates_in
class Time
  def self.random(params = {})
    years_back = params[:year_range] || 5
    year = Time.now.year - rand(years_back) - 1
    month = rand(12) + 1
    day = rand(31) + 1
    date = Time.local(year, month, day)

    series = [date]
    if params[:series]
      params[:series].each do |some_time_after|
        series << series.last + (rand * some_time_after).ceil
      end
      return series
    end

    date
  end
end
