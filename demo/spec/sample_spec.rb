require 'airborne'

describe "sample test" do
  it 'should redirect to www.iso-backend' do
    get 'http://www.iso-sample.com/sample'
    expect(json_body[:SERVER_NAME]).to eq "www.iso-backend.com"
  end
  it 'should return 404' do
    get 'http://www.iso-sample.com/sample123'
    expect_status 404
  end
end
