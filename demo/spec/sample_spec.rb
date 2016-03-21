require 'airborne'

describe "sample test" do
  it 'should get something' do
    get 'http://www.iso-sample.com/sample'
    headers.each do |header|
      print header
    end
  end
end
