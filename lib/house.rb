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
            "that lay in ",
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

    def line(number)
        "#{@intro}#{noun_plus_verb(number)}#{@ending}\n"
    end

    def noun(line)
        line_num = line - 1
        if line_num == 0
            ""
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
            ""
        else
            "#{noun(line)} #{verb(line)}#{noun_plus_verb(line - 1)}"
        end
    end

#         def recite
#             <<-TEXT
# This is the house that Jack built.

# This is the malt that lay in the house that Jack built.

# This is the rat that ate the malt that lay in the house that Jack built.

# This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
#             TEXT
#         end

        def recite
            line(12)
        end
 
end

class Pirate

end

class Random

end
