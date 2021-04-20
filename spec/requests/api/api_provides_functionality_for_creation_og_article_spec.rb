RSpec.describe "POST /api/articles", type: :request do
  before do
    post '/api/articles', params: { title: 'Not so fun with Node', body: 'Is is a configuration hell' }
  end

  it 'is expected to respond with 201' do
    expect(response).to have_http_status 201
  end

  it 'is expected to respond with success message' do
    expect(JSON.parse(response.body)['message']).to eq 'Your article was successfully created'
  end
end