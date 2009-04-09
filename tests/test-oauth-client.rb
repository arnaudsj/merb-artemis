require 'rubygems'
require 'oauth'
require 'net/http'
require 'uri'






def main()
  consumer_obj= OAuth::Consumer.new( "key","secret",{
      :site=>"http://localhost:4000/",
      :scheme=>:query_string,
      :http_method=>:post,
      :request_token_path=>"/oauth/request_token",
      :access_token_path=>"/oauth/access_token",
      :authorize_path=>"/oauth/authorize"
     })
     
  request_token = consumer_obj.get_request_token
  puts request_token
  authorize_url = request_token.authorize_url
  puts authorize_url
  authorize_uri = URI.parse(authorize_url)

  

  #Net::HTTP.get URI.parse(authorize_url)
  
  #access_token = request_token.get_access_token
  #puts access_token
  
  #puts access_token.get('/contact_list')

  
end

main()
