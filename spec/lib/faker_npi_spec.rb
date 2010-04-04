require File.dirname(__FILE__) + '/../spec_helper.rb'

describe Faker::Npi do

  it "should return a npi" do
    Faker::Npi.npi.should match(/^\d{10}$/)    
  end
  

end