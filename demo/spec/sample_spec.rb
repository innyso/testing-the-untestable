require 'airborne'

describe "sample test" do
  it 'should redirect to www.testing-backend' do
    get 'http://www.testing-sample.com/sample'
    expect(json_body[:SERVER_NAME]).to eq "www.testing-backend.com"
  end
end
