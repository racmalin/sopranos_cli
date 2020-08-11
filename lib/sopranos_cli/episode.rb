module SopranosCli

    class Episode
      attr_accessor :season, :number, :summary, :name

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
     
      def initialize(attributes = {} )
       @season = attributes["season"]
       @number = attributes["number"]
       @summary = attributes["summary"]
       @name = attributes["name"]
      end

      
    end

end