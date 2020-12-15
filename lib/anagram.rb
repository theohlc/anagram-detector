class Anagram
    attr_accessor :word
    
    def initialize(word)
        @word = word
    end

    def match(possible_matches_array)
        matches_array = []

        letter_array = word.split("").sort
        
        possible_matches_array.each do |posi_match|
          posi_word_array = posi_match.split("").sort
          if posi_word_array == letter_array
              matches_array << posi_match 
          end

        end

        matches_array
    end
end
