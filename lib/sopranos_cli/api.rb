require 'open-uri'
require 'json'
require 'pry'

module SopranosCli

 class API
    def self.get_episodes
      json_string = URI.open("http://api.tvmaze.com/shows/527/episodes").read
      JSON.parse(json_string)
      response = JSON.parse(json_string)

           
    end
  end
end
