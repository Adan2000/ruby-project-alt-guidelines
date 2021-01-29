require 'pry'
class CLI
    
    def call 
        loop do 
            options
            choice = gets.chomp
        
            case choice 
            when "1"
                puts "Enter a username"
                response = gets.chomp
                @user = User.find_or_create_by(name: response)
                @user.save
                puts "Thank you for creating a user"
            when "2"
                puts "Enter a username"
                response = gets.chomp
                @user = User.find_or_create_by(name: response)
                @user.save
                puts "Enter trainer's name"
                response = gets.chomp
                @trainer = Trainer.find_by(name: response)
                puts "Enter a date for your future training session"
                date = gets.chomp
                if @trainer 
                    new_session = Session.create(trainer_id: @trainer.id, user_id: @user.id, date: date)
                    puts "Your session is booked for #{new_session.date}!"
                end
            when "3"
                puts "Enter your username"
                response = gets.chomp
                @user = User.find_or_create_by(name: response)
                @user.save
                puts "Here are your upcoming sessions!\n\n"
                @user.sessions.each do |session|
                    puts session.date 
                end
            when "4"
                puts "Enter the session date you want to update"
                session_date = gets.chomp
                date = Session.select {|session| session.date = session_date}
                puts "Enter the new date"
                new_date = gets.chomp
                date.new_date = new_date
                date.save
            when "5"
                puts "Select the session you would like to cancel"
                array = Session.all.select{|session| session.user_id == @user.id}
                array.each.with_index(1) do |session, i|
                    puts "#{1}. #{session.date}"
                end
                answer = gets.chomp.to_i
                array[answer-1].delete
                array.save
            end
        end
    end
    def options
        puts "Welcome to the FreedomFitness app!"
        puts "[1] Create a user"
        puts "[2] Book a session with a trainer"
        puts "[3] View current sessions"
        puts "[4] Update a session"
        puts "[5] Cancel a session"
    end
end


    #         puts "Enter your username to get started"
    # puts "[6] To exit program"
    # end 
        # when "6"
        # #    exit
        # # end 

         #    when "b"
         #              puts "Enter your username to get started"
         #              if answer == self.user
         #              puts "choose from our expert trainers to book a session with them"
                
         #              answer == Session.create()
    
         #    when "r"
         #     puts "Here are all your current session"
         #     Session.all.each do |t|
         #     self.t.session
    
         #    when "u"
         #     puts "Please enter your :user to view your current sessions"
         #     # Find a way to get that user name and dsiplay their session
         #     puts "Choose from the following sessions which one you would like to update or cancel"
         #     # Find a way to update that session or cancel
         #     # Find a way to save that
         #     puts "Thank you, your trainer will be notified of the changes."
        
         #     when "d"
        # end 
    



