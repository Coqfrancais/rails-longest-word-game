class GamesController < ApplicationController

    def new
        #création de la variable d'instance @letters
        #elle stockera 10 lettres au hasard type array
        #V1 de letters :
        @letters = ('a'..'z').to_a.shuffle.first(10)
    end

    def score
        
        @word = params["word"]
        @letters = params["letters"]
        if @letters.include?(@word)
            return @buildable = "Correct word"
       else
            return @buildable = "You can't make that word from the list"
       end
    end

end
