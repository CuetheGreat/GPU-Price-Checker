require_relative "../parser.rb"

class GPU_Price_Checker::CLI
    def initialize
        Parser.scrape_GPU_List
    end

    def call
        welcome
        #list GPUS
        #Ask user for input
        #process input and display card
    end

    def welcome
        puts "Welcome!"
        puts "Here is a list of graphic cards available for purchase:"
    end




end