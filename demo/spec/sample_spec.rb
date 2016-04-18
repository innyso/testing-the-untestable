require 'airborne'

describe "sample test" do
  it 'should redirect to www.iso-backend' do
    get 'http://www.iso-sample.com/sample'
    expect(json_body[:SERVER_NAME]).to eq "www.iso-backend.com"
  end
end
