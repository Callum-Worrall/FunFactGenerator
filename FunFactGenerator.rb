require 'faker'
require 'colorize'
require 'emoji'

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
        puts "Hello there!" 
        puts @@heart.encode('utf-8')
        # Emoji.replace_unicode_moji_with_images('I ❤ Emoji')
        # => "I <img alt=\"❤\" class=\"emoji\"
        # src=\"https://cdn.shopify.com/s/files/1/1061/1924/products/Neutral_Emoji_icon_9f1cc93a-f984-4b6c-896e-d24a643e4c28_large.png?v=1571606091\"> Emoji"

        while continue == true
            if(firstLoop == true)
                puts "Would you to hear a useless fun fact? 'yes' or 'no'"
                firstLoop = false
            else
                puts "Would you like another useless fun fact? 'yes' or 'no'"
            end

            case gets.chomp
            when "yes"
                if(@@funFactArray.length > 0)
                    @@funFactArray = @@funFactArray.shuffle
                    fact = @@funFactArray[0]
                    @@funFactArray.shift
                    puts "Fun fact, ".colorize(:blue) + fact.colorize(:red)
                else
                    puts "Unfortunately I don't have anymore useless facts, oh well, not a big loss is it."
                end

            when "no"
                then continue = false			
            else
                puts "Invalid Answer."
			end
        end

        puts "Thanks for playing!"
    end

end

gen = FunFactGenerator.new
gen.Update

# ruby FunFactGenerator.rb