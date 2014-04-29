require_relative '../../spec_helper.rb'

describe Faker::Medical::Patient do
  it "should return a patient gender" do
    Faker::Medical::Patient.gender.should match(/^[M|F]$/)
  end

  it "should return 10 patient dates of birth" do
    100.times do
      Faker::Medical::Patient.dob.should be_true
    end
  end

  it "should return basic phone number" do
    Faker::Medical::Patient.phone_number.should =~ /^[0-9]{3}-[0-9]{3}-[0-9]{4}$/
  end
end
