class NamaTeam
  MAP = { 5 => "Nama", 7 => "Team" }

  def self.convert_all(numbers)
    numbers.map { |number| convert(number) }.join(", ")
  end

  def self.convert(number)
    words = MAP.select { |divisor| (number % divisor).zero? }.values.join(" ")
    words.empty? ? number : words
  end
end
