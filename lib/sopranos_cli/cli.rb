require "pry"
module SopranosCli
    class CLI
      def start
        puts "Hey!Forget about it! Welcome to the Sopranos CLI app."
        puts "There are six seasons of The Sopranos,
          Choose 1 thru 6 to view all the episodes within that season,then choose an episode to see a brief summary,
          or exit twice to quit."
          if @season_input != "exit" && @season_input != "back"
            @season_input = gets.chomp
            if @season_input.to_i <= 6 && @season_input.to_i > 0
              @season = @season_input.to_i
              Episode.by_season(@season).each.with_index(1) do |episode, index|
                puts "#{index}.#{episode.name}"  
              end
            end
          end
           
          puts "Choose the episode you would like to see a summary for."

          @input = gets.chomp

          if @input != "exit" && @input != "back"
            
            if @input.to_i > 0 
              @user_input = @input.to_i - 1
              @current_season = Episode.by_season(@season_input.to_i)
              @current_episode = @current_season.fetch(@user_input)
               puts "Here is the summary for #{@current_episode.name}" 
               puts "#{@current_episode.summary}"  
            end
            
            while @input.to_i != "exit"
            return start
            end
          
           else @input.to_i == "exit"
                puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
                puts "Thanks for checking up on Tony and the boys!"
                puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
           end
         end
      end
   end


