require 'airborne'

describe "sample test" do
  it 'should get something' do
    get 'http://www.iso-sample.com/sample'
    print json_body
  end
end
