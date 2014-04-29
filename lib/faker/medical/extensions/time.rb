# mixin random time function from http://jroller.com/obie/entry/random_times_for_rails
class Time
  def self.random(params = {})
    years_back = params[:year_range] || 5
    year = (rand * (years_back)).ceil + (Time.now.year - years_back)
    month = (rand * 12).ceil
    day = (rand * 31).ceil
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
