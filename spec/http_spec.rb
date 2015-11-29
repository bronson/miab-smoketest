require 'net/http'
require 'nokogiri'
require './config'

describe 'http' do
  def get path, headers={}
    # path must be absolute
    http = Net::HTTP.new(HOST)
    request = Net::HTTP::Get.new(path, headers)
    http.request(request)
  end

  def document body
    Nokogiri::HTML(body)
  end

  def ensure_redirect response, url_matcher
    expect(response.code).to eq('301').or eq('302')
    expect(response.header['location']).to match url_matcher
    href = document(response.body).css('a').attr('href').value
    expect(href).to match url_matcher
    response.header['location']
  end


  it 'works' do
    response = get '/'
    ensure_redirect response, %r{^https://#{MACHINE_NAME}/}
  end
end
