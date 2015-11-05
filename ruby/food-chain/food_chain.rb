class FoodChain
  VERSION = 2

  BEASTS = {
    1 => [:fly, "I don't know why she swallowed the fly. Perhaps she'll die.\n"],
    2 => [:spider, "that wriggled and jiggled and tickled inside her."],
    3 => [:bird, "How absurd to swallow a bird!"],
    4 => [:cat, "Imagine that, to swallow a cat!"],
    5 => [:dog, "What a hog, to swallow a dog!"],
    6 => [:goat, "Just opened her throat and swallowed a goat!"],
    7 => [:cow, "I don't know how she swallowed a cow!"],
    8 => [:horse, "She's dead, of course!"]
  }

  SONGPARTS = {
    :a => "I know an old lady who swallowed a",
    :b => "She swallowed the",
    :c => "to catch the"
  }

  def self.song
    [].tap { |verse| 1.upto(BEASTS.max[0]) do |i|
      verse << start_verse(i)
      i == BEASTS.max[0] ? verse << '' : verse << build_verse(i)
    end }.join("\n").gsub(/\n{3}/, "\n\n")
  end

  def self.start_verse(n)
    b = n == 2 ? "#{BEASTS[n][1].gsub('that', 'It')}" : "#{BEASTS[n][1]}"
    "#{SONGPARTS[:a]} #{BEASTS[n][0]}.\n#{b}"
  end

  def self.build_verse(n)
    [].tap { |verse| n.downto(2) do |i|
      str  = "#{SONGPARTS[:b]} #{BEASTS[i][0]} #{SONGPARTS[:c]} " if i > 1
      str += "#{BEASTS[i - 1][0]}"
      str += ( i == 3 ? " #{BEASTS[i - 1][1]}" : "." )
      verse << str; verse << BEASTS[1][1] if i == 2
    end }.join("\n")
  end
end
