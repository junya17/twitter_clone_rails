require 'net/http'
require 'uri'
require 'json'

class NewsController < ApplicationController
	def index
		uri = URI.parse('https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=bd52bc962510460eb540907e53f5acd4')
		json = Net::HTTP.get(uri)
		result = JSON.parse(json)
		@newses = result['articles']
	end
end

