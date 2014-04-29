require_relative '../../spec_helper.rb'

describe Faker::Medical::DEA do
  it "should return a ssn with dashes" do
    #puts Faker::Dea.dea
    Faker::Medical::DEA.dea.should match(/^[A|B|F|M|P|R][A-Z](?!000000)\d{6}/)
  end
end
