def palindrome?(string)
  string.gsub(/\W/, "").downcase.reverse == string.gsub(/\W/, "").downcase
end

input = gets.chomp
puts palindrome?(input)