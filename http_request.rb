require 'rest-client'

puts 'Enter Search Query'
search_query = gets.chomp

result = RestClient.get 'https://bing.com/search', {params: {q: search_query}}

p result.code
p result.cookies
p result.headers
p result.body
