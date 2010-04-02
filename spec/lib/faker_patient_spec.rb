require File.dirname(__FILE__) + '/../spec_helper.rb'

describe Faker::Patient do

  it "should return a patient gender" do
    Faker::Patient.gender.should match(/^[M|F]$/)    
  end
  
  it "should return 10 patient dates of birth" do
    100.times do
      Faker::Patient.dob.should be_true
    end
  end
end