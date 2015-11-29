describe 'https' do
  it 'responds' do
    response = get '/', ssl: true
    expect(response.code).to eq '200'
    expect(response.body).to match("take control of your email")
  end
end
