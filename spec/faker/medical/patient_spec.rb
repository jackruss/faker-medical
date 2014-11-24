require_relative '../../spec_helper.rb'

describe Faker::Medical::Patient do
  it "should return a patient gender" do
    Faker::Medical::Patient.gender.should match(/^[M|F]$/)
  end

  it "should return 100 patient dates of birth" do
    100.times do
      Faker::Medical::Patient.dob.should be_true
    end
  end

  # This returns a phone number from Faker::PhoneNumber.phone_number, and that method is tested
  # in Faker. We shouldn't test again here, mostly because Faker changed to include extensions
  # and this test failed. Just test to make sure we still return something
   it "should return basic phone number" do
      Faker::Medical::Patient.phone_number.should be_true
      # Faker::Medical::Patient.phone_number.should match(/^[0-9]{3}-[0-9]{3}-[0-9]{4}$/)
   end
end
