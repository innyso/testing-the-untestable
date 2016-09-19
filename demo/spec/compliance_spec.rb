require 'airborne'

describe "compliance_test" do
  it 'any reverse proxy should not include version in header' do
    get 'http://www.testing-sample.com/sample'
    expect(headers[:server]).not_to match(/.+\/\d+\.*\d*\.*\d*$/)
  end
end
