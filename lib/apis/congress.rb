
require 'net/http'
require 'json'

class APIS::Congress
	@@url = "http://api.nytimes.com/svc/politics/v3/us/legislative/congress/113/senate/members.json?"


	def self.search_senators x
		url = "#{@@url}state=#{x}&api-key=a29a45ef051e486c34bd0ee31e4cd58f%3A1%3A74385417"
		get_response url
	end

		
		
	def self.get_response url
		uri = URI(url)
		response = Net::HTTP.get(uri)
		parsed = JSON.parse(response)
		parsed["results"][0]["members"]
	end

	private_class_method :get_response

end