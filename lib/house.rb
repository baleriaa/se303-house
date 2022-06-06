class House

    def initialize(intro = "This is")
        @intro = intro
        @ending = "the house that Jack built."
        @nouns = [
            " the house",
            " the malt",
            " the rat",
            " the cat",
            " the dog",
            " the cow",
            " the maiden",
            " the man",
            " the priest",
            " the rooster",
            " the farmer",
            " the horse and the hound and the horn"
        ]
        @verbs = [
            "that Jack built.",
            "that lay in",
            "that ate",
            "that killed",
            "that worried",
            "with the crumpled horn that tossed",
            "all forlorn that milked",
            "all tattered and torn that kissed",
            "all shaven and shorn that married",
            "that crowed in the morn that woke",
            "sowing his corn that kept",
            "that belonged to"
        ]
    end

    def line(number, new_line = false)
        if new_line
            (1..12).map { |number| line(number)}.join("\n")
        else
            "#{@intro}#{noun_plus_verb(number)}#{@ending}\n"
        end
    end

    def noun(line)
        line_num = line - 1
        if line_num == 0
            @nouns[line_num]
        else
            @nouns[line_num]
        end
    end

    def verb(line)
        line_num = line - 1
        if line_num == 0
            ""
        else
            @verbs[line_num] 
        end
    end

    def noun_plus_verb(line)
        if line == 1
            " "
        else
            "#{noun(line)} #{verb(line)}#{noun_plus_verb(line - 1)}"
        end
    end

    def recite
        line(12, true)
    end
end

class RandomLyrics < House
    def noun(line)
        noun.shuffle!()
        line_num = line - 1
        if line_num == 0
            ""
        else
            @nouns[line_num]
        end
    end

    def verb(line)
        verb.shuffle!()
        line_num = line - 1
        if line_num == 0
            ""
        else
            @verbs[line_num] 
        end
    end

    def line(number)
        super(number)
    end
end

class Pirate < House
    def initialize
        super("Thar be")
    end

end

class RandomPirateLyrics < RandomLyrics
    def generate_lyrics(number)
        Pirate.new.line(2)
    end
end



