require 'faker'
require 'colorize'

# to bundle your gems
# gem install bundler # installs the bundler
# bundle init # create gem file
# bundle add "gemName" # adds gem to gem file

class FunFactGenerator

    @@funFactArray =
    [
        "blue whales are of a large size in relation to you.",
        "cats do whatever they want whenever possible.",
        "I like some things, you do too probably.",
        "Capsule Corp is a fictional company witin the series Dragon Ball.",
        "you're still technically alive."
    ]

    @@heart = "\u2665"

    def Update
        @@funFactArray << "one of the poeple down the streets name could technically be #{Faker::Name.name}."

        continue = true
        firstLoop = true
        puts "Hello there! ".colorize(:yellow) + @@heart.encode('utf-8').colorize(:red)

        while continue == true
            if(firstLoop == true)
                puts "Would you to hear a useless fun fact? ".colorize(:yellow) + "'yes' or 'no'"
                firstLoop = false
            else
                puts "Would you like another useless fun fact? ".colorize(:yellow) + "'yes' or 'no'"
            end

            case gets.chomp
            when "yes"
                if(@@funFactArray.length > 0)
                    @@funFactArray = @@funFactArray.shuffle
                    fact = @@funFactArray[0]
                    @@funFactArray.shift
                    puts "Fun fact, ".colorize(:blue) + fact.colorize(:blue)
                else
                    puts "Unfortunately I don't have anymore useless facts, ".colorize(:red) + "oh well, ".colorize(:blue) + "not a big loss is it.".colorize(:green)
                end

            when "no"
                then continue = false			
            else
                puts "Invalid Answer.".colorize(:red)
			end
        end

        puts "Thanks for playing!".colorize(:yellow)
    end

end

gen = FunFactGenerator.new
gen.Update

# ruby FunFactGenerator.rb