class Hamming
  VERSION = 1

  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError.new("unequal strand lengths")
    end
    diff = 0
    strand1.each_char.with_index { |c, i| diff += 1 if c != strand2[i] }
    return diff
  end
end
