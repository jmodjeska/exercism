class Phrase
  VERSION = 1

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @phrase.downcase.scan(/\b[\w']+\b/)
      .each_with_object(Hash.new(0)) { |w, h| h[w] += 1 }
  end
end
