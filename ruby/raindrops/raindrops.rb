class Raindrops
  VERSION = 1

  def self.convert(num)
    drops = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    factored = ""
    drops.each { |prime, sound| factored += sound if num % prime == 0 }
    return factored == "" ? num.to_s : factored
  end
end
