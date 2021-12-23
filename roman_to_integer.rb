ROMAN_TO_NUMBERS = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000,
  'IV' => 4,
  'IX' => 9,
  'XL' => 40,
  'XC' => 90,
  'CD' => 400,
  'CM' => 900
}.freeze

def roman_to_numbers(roman_number)
  chars = roman_number.split('')
  sequence = []
  num = 0
  chars.each_with_index do |letter, i|
    next if !sequence.empty? && sequence.last.size == 2 && sequence.last.include?(letter)

    next_letter = chars[i + 1] || 'A'
    sequence << (ROMAN_TO_NUMBERS.key?(letter + next_letter) ? letter + next_letter : letter)
  end

  sequence.each { |n| num += ROMAN_TO_NUMBERS[n] }
  p num
end

# roman_to_numbers("III")
roman_to_numbers('MCMXCIV')
