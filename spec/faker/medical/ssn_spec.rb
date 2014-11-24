require_relative '../../spec_helper.rb'

describe Faker::Medical::SSN do
  it "should return a ssn with dashes" do

    Faker::Medical::SSN.ssn.should match(Faker::Medical::SSN::SSN_REGEX)
  end
end
