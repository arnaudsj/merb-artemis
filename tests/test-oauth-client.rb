require 'rubygems'
require 'oauth'

def main()
  consumer_obj= OAuth::Consumer.new( "requestkey","requestsecret",{
      :site=>"http://localhost:4000/",
      :scheme=>:header,
      :http_method=>:get,
      :request_token_path=>"/oauth/request_token",
      :access_token_path=>"/oauth/access_token",
      :authorize_path=>"/oauth/authorize"
     })
     
  request_token = consumer_obj.get_request_token
end


main()