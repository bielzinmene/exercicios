def count_words(string)
  count = Hash.new(0)
  fruits = string.downcase.scan(/\b\w+\b/)
  fruits.each do |fruit|
    count[fruit] += 1
  end
  count
end

input = count_words(gets.chomp)
puts input# frozen_string_literal: true

