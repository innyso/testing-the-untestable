require 'airborne'

describe "sample test" do
  it 'should redirect to www.testing-backend' do
    get 'http://www.testing-sample.com/sample'
    expect(json_body[:SERVER_NAME]).to eq "www.testing-backend.com"
  end
  it 'get a 404 if I go to sample123' do
    get 'http://www.testing-sample.com/sample123'
    expect_status 404
  end
end
