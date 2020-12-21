require "pry"

module SopranosCli

    class Episode
      attr_accessor :season, :number, :summary, :name

      

      def initialize(attributes = {} )
        @season = attributes["season"]
        @number = attributes["number"]
        @summary = attributes["summary"]
        @name = attributes["name"]
        
      end

      def self.all
        @@all ||= load
      end

      def self.load
        API.get_episodes.collect do |episode_hash|
          Episode.new(episode_hash)
        end
      end 
    
      def self.by_season(season)
        self.all.select{|episode|episode.season == season}
      end

      def self.find_by_name(name)
        Episode.all.find{|episode|episode.name === name}
      end        
    end

end