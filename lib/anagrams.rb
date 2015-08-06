class String

  define_method(:anagrams?) do |words|
    word = self.split("").sort()
    anagrams = words.gsub(",", "").split(" ")
    new_array = []
    sentence = ""

    anagrams.each do |anagram|
      x = anagram.split("").sort()
      if x == word
        new_array.push(anagram)
      end
    end
    if new_array.length > 0
      if new_array.length > 1
        sentence += "The strings"
        new_array.each() do |ana|
          if ana == new_array[0]
            sentence += " " + ana
          elsif ana == new_array[new_array.length-1]
            sentence += " and "  + ana
          else
            sentence += ", " + ana
          end
        end
        sentence += " are anagrams of " + self + "."
      else
        sentence = "The string " + new_array[0] + " is an anagram of " + self + "."
      end
    else
      sentence = "No anagrams found."
    end
    sentence
  end
end
