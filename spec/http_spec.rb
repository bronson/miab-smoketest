describe 'http' do
  it 'redirects to ssl' do
    response = get '/'
    ensure_redirect response, %r{^https://#{MACHINE_NAME}/}
  end
end

describe 'https' do
  it 'responds' do
    response = get '/', ssl: true
    puts "STATUS: #{response.code}"
    puts "BODY: \n#{response.body}\n\n"
    ensure_redirect response, %r{^https://#{MACHINE_NAME}/}
  end
end
