class Complement
  VERSION = 2

  def self.of_dna(strand)
    self.process(strand, :dna)
  end

  def self.of_rna(strand)
    self.process(strand, :rna)
  end

  def self.process(strand, order)
    complements = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }
    complements = complements.invert if order == :rna

    unless strand.chars.all? { |n| complements.has_key?(n) }
      raise ArgumentError.new("invalid input in strand")
    end

    comps = []
    strand.each_char { |n| comps << complements[n] }
    return comps.join()
  end
end
