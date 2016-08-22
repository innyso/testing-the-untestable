require 'airborne'

describe "compliance test" do
  it "should not show server header" do
   get 'http://www.testing-sample.com/sample'
   expect(headers[:server]).not_to match(/.+\/\d+\.*\d*\.*\d*$/) 
  end
end
