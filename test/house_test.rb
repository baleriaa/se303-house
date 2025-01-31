gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'

class HouseTest < Minitest::Test

  def test_line_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, House.new.line(1)
  end

  def test_line_2
    expected = "This is the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(2)
  end

  def test_line_3
    expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(3)
  end

  def test_line_4
    expected = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(4)
  end

  def test_line_5
    expected = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(5)
  end

  def test_line_6
    expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(6)
  end

  def test_line_7
    expected = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(7)
  end

  def test_line_8
    expected = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(8)
  end

  def test_line_9
    expected = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(9)
  end

  def test_line_10
    expected = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(10)
  end

  def test_line_11
    expected = "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(11)
  end

  def test_line_12
    expected = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(12)
  end

  def test_all_the_lines
    expected = <<-TEXT
This is the house that Jack built.

This is the malt that lay in the house that Jack built.

This is the rat that ate the malt that lay in the house that Jack built.

This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, House.new.recite
  end
end

class PirateTest < Minitest::Test

  def test_pirate_line_1
    expected = "Thar be the house that Jack built."
  end

  def test_pirate_line_2
    expected = "Thar be the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(2)
  end

  def test_line_3
    expected = "Thar be the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(3)
  end

  def test_pirate_line_4
    expected = "Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(4)
  end

  def test_pirate_line_5
    expected = "Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(5)
  end

  def test_pirate_line_6
    expected = "Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(6)
  end

  def test_pirate_line_7
    expected = "Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(7)
  end

  def test_pirate_line_8
    expected = "Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(8)
  end

  def test_pirate_line_9
    expected = "Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(9)
  end

  def test_pirate_line_10
    expected = "Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(10)
  end

  def test_pirate_line_11
    expected = "Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(11)
  end

  def test_pirate_line_12
    expected = "Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, Pirate.new.line(12)
  end

  def test_pirate_all_lines
    expected = <<-TEXT
Thar be the house that Jack built.

Thar be the malt that lay in the house that Jack built.

Thar be the rat that ate the malt that lay in the house that Jack built.

Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, Pirate.new.recite
  end

end

class RandomLineTest < Minitest::Test


  def test_random_lyrics_line_2
    expected = RandomLine.new.line(2)
    not_expected = House.new.line(2)
    refute_equal expected, not_expected
  end

  def test_random_lyrics_line_3
    expected = RandomLine.new.line(3)
    not_expected = House.new.line(3)
    refute_equal expected, not_expected
  end

  def test_random_lyrics_line_4
    expected = RandomLine.new.line(4)
    not_expected = House.new.line(4)
    refute_equal expected, not_expected
  end

  def test_random_lyrics_line_5
    expected = RandomLine.new.line(5)
    not_expected = House.new.line(5)
    refute_equal expected, not_expected
  end

  def test_random_lyrics_line_6
    expected = RandomLine.new.line(6)
    not_expected = House.new.line(6)
    refute_equal expected, not_expected
  end

  def test_random_lyrics_line_7
    expected = RandomLine.new.line(7)
    not_expected = House.new.line(7)
    refute_equal expected, not_expected
  end

  def test_random_lyrics_line_8
    expected = RandomLine.new.line(8)
    not_expected = House.new.line(8)
    refute_equal expected, not_expected
  end

  def test_random_lyrics_line_9
    expected = RandomLine.new.line(9)
    not_expected = House.new.line(9)
    refute_equal expected, not_expected
  end

  def test_random_lyrics_line_10
    expected = RandomLine.new.line(10)
    not_expected = House.new.line(10)
    refute_equal expected, not_expected
  end

  def test_random_lyrics_line_11
    expected = RandomLine.new.line(11)
    not_expected = House.new.line(11)
    refute_equal expected, not_expected
  end

  def test_random_lyrics_line_12
    expected = RandomLine.new.line(12)
    not_expected = House.new.line(12)
    refute_equal expected, not_expected
  end


end

class RandomPirateLyricsTest < Minitest::Test

  def test_random_pirate_line_1
    expected = RandomPirateLyrics.new.generate_lyrics(1)
    # not_expected = House.new.line(2)
    assert_includes expected, "Thar be"
  end

  def test_random_pirate_line_2
    expected = RandomPirateLyrics.new.generate_lyrics(2)
    # not_expected = House.new.line(2)
    assert_includes expected, "Thar be"
  end

  def test_random_pirate_line_3
    expected = RandomPirateLyrics.new.generate_lyrics(3)
    assert_includes expected, "Thar be"
  end

  def test_random_pirate_line_4
    expected = RandomPirateLyrics.new.generate_lyrics(4)
    assert_includes expected, "Thar be"
  end

  def test_random_pirate_line_5
    expected = RandomPirateLyrics.new.generate_lyrics(5)
    assert_includes expected, "Thar be"
  end

  def test_random_pirate_line_6
    expected = RandomPirateLyrics.new.generate_lyrics(6)
    assert_includes expected, "Thar be"
  end
  def test_random_pirate_line_7
    expected = RandomPirateLyrics.new.generate_lyrics(7)
    assert_includes expected, "Thar be"
  end

  def test_random_pirate_line_8
    expected = RandomPirateLyrics.new.generate_lyrics(8)
    assert_includes expected, "Thar be"
  end

  def test_random_pirate_line_9
    expected = RandomPirateLyrics.new.generate_lyrics(9)
    assert_includes expected, "Thar be"
  end
  def test_random_pirate_line_10
    expected = RandomPirateLyrics.new.generate_lyrics(10)
    assert_includes expected, "Thar be"
  end

  def test_random_pirate_line_11
    expected = RandomPirateLyrics.new.generate_lyrics(11)
    assert_includes expected, "Thar be"
  end

  def test_random_pirate_line_12
    expected = RandomPirateLyrics.new.generate_lyrics(12)
    assert_includes expected, "Thar be"
  end

end


