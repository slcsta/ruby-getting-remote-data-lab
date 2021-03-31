# Remember to require necessary Ruby modules and classes
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester

# initialize w/a string URL
attr_accessor :url

    def initialize(url)
        @url = url
    end

# get_response_body method that sends GET request to the URL passed in on initialization
# get_reponse_body method should return the body of the response

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

# parse_json method to use get_response_body to send a request, then return a Ruby Array 
# or Hash made up of data converted from the response of that request.

    def parse_json
        parsed = JSON.parse(self.get_response_body)
        # parsed.collect do |parse|
        #     parse[]
    end
end

# require 'net/http'
# require 'open-uri'
# require 'json'
 
# class GetPrograms

#   URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"

#   def get_programs
#     uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     response.body
#   end

#   def program_school
#     # we use the JSON library to parse the API response into nicely formatted JSON
#     programs = JSON.parse(self.get_programs)
#     programs.collect do |program|
#       program["agency"]  
#     end
#   end 
# end

# # programs = GetPrograms.new.get_programs
# # puts programs
# programs = GetPrograms.new
# puts programs.program_school.uniq 
