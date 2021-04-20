require_relative "../parser.rb"
require_relative "../gpu.rb"


class GPU_Price_Checker::CLI
    def initialize
        Parser.scrape_GPU_List
    end

    def call
        welcome
        list_GPUS
        select_item_loop()
    end

    def welcome
        puts "Welcome!"
        puts "Here is a list of graphic cards available for purchase:"
    end

    def list_GPUS
        GPU.all.each_with_index do |card, index|
            puts "#{index + 1}. #{card.name} | #{card.price}"
        end
    end

    def valid_input?(input)
        i = input.to_i - 1
        if i < GPU.all.length && i >= 0
            true
        else 
            false
        end
    end

    def exit?(input)
        if input == "exit"
            true
        else
            false
        end
    end

    def select_item_loop(input = nil)
        while input != "exit" do
            puts ""
            puts "Enter a number(1 - #{GPU.all.length}) for info on a graphics card(\"exit\" to quit):"
            input = gets.strip

            if exit?(input)
                puts "Thank you for using this tool!"
            elsif valid_input?(input)
                get_item_details(input)
            else
                puts "Invalid selection. Please enter 1-#{GPU.all.length}"
            end
        end
    end

    def get_item_details(index)
        card = GPU.all[index.to_i - 1]
        puts <<~DESC
            Here are the details for \" #{card.name} \":
            ID: #{card.id}  |   Stock: #{card.quantity} |   Price: #{card.price}
            Link: https://www.microcenter.com#{card.link[0]}
        DESC
    end



end