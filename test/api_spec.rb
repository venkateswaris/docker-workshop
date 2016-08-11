require 'rest-client'

describe 'api spec' do

  it 'should get details' do

	response = RestClient.get 'http://app:8080'
	expect(response.code).to eq(200)
    
  end

end