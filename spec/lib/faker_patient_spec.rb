require File.dirname(__FILE__) + '/../spec_helper.rb'

describe Faker::Patient do

  it "should return a patient gender" do
    puts Faker::Patient.gender
    Faker::Patient.gender.should match(/^[M|F]$/)    
  end
  

end