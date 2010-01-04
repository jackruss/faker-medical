require File.dirname(__FILE__) + '/../spec_helper.rb'

describe Faker::Ssn do

  it "should return a ssn with dashes" do
    Faker::Ssn.en_ssn.should match(/^(?!000)([0-6]\d{2}|7([0-6]\d|7[012]))([ -]?)(?!00)\d\d\3(?!0000)\d{4}$/)    
  end
  

end
