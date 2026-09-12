def combine_anagrams(listofanagrams)
  founds = {}
  listofanagrams.each do |word|
    assign = word.downcase.chars.sort.join
    founds[assign] ||= []
    founds[assign] << word
  end
  founds.values

end

input = ['cars', 'for',
         'potatoes', 'racs',
         'four','scar', 'creams', 'scream'
]

p combine_anagrams(input)