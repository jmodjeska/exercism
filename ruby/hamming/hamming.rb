class Hamming
  VERSION = 1

  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError.new("unequal strand lengths")
    end
    offset = 0
    strand2 = strand2.split("")
    strand1.split("").each.with_index do |n, i|
      offset += 1 if n != strand2[i]
    end
    return offset
  end
end
