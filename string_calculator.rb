class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    numbers = parse_delimiter(numbers)

    # Split the numbers by the defined delimiter
    number_array = numbers.split(delimiter).map(&:to_i)

    number_array.sum
  end

  def self.parse_delimiter(numbers)
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..-1]  # Extract the delimiter
      numbers = parts[1]
      numbers.gsub!(delimiter, ',') # Replace custom delimiter with comma
    end
    numbers
  end
end
