require_relative "../parser.rb"
require_relative "../gpu.rb"


class GPU_Price_Checker::CLI
    def initialize
        Parser.scrape_GPU_List
    end

    def call
        welcome
        list_GPUS
        #Ask user for input
        #process input and display card
    end

    def welcome
        puts "Welcome!"
        puts "Here is a list of graphic cards available for purchase:"
    end

    def list_GPUS
        GPU.all.each_with_index do |card, index|
            puts "#{index + 1}. #{card.name}"
        end
    end




end