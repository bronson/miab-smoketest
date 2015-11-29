describe 'http' do
  it 'redirects to ssl' do
    response = get '/'
    ensure_redirect response, %r{^https://#{MACHINE_NAME}/}
  end
end
