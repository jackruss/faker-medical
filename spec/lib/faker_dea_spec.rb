require File.dirname(__FILE__) + '/../spec_helper.rb'

describe Faker::Dea do

  it "should return a ssn with dashes" do
    #puts Faker::Dea.dea
    Faker::Dea.dea.should match(/^[A|B|F|M|P|R][A-Z](?!000000)\d{6}/)    
  end
  

end