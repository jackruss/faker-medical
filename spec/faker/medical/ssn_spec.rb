require_relative '../../spec_helper.rb'

describe Faker::Medical::SSN do
  it "should return a ssn with dashes" do
    Faker::Medical::SSN.ssn.should match(/^(?!000)([0-6]\d{2}|7([0-6]\d|7[012]))([ -]?)(?!00)\d\d\3(?!0000)\d{4}$/)
  end
end
