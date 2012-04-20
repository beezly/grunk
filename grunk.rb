# Grunk: Grep for Splunk
require 'json'
require 'net/http'
require 'net/https'
require 'nokogiri'
require 'uri'

$SPLUNK_URI = 'https://splunk.shef.ac.uk:8089/services'

class Splunk
  def initialize(splunk_uri,user,password)
    @uri = splunk_uri
    
    res = Nokogiri::XML(api_request("#{@uri}/auth/login", 'username' => user, 'password' => password).body)
    @session_key = res.xpath('/response/sessionKey')[0].content
  end
  
  def search(search, *data)
    res = Nokogiri::XML(api_request("#{@uri}/search/jobs/export", 'search' => search, 'earliest_time' => '-1h').body)
    res.xpath('/results/result/field[@k="_raw"]/v').each {|entry|
      # work out what to do here
    }
  end
  
  private 
  
  def api_request(uri, *data)
    endpoint = URI.parse(uri)
    http = Net::HTTP.new endpoint.host, endpoint.port
    if endpoint.scheme == 'https'
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    end
    
    req = Net::HTTP::Post.new(endpoint.path)
    
    if @session_key
      req['Authorization'] = "Splunk #{@session_key}"
    end
    
    req.set_form_data(*data)
    http.request req
  end
end
