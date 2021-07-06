def starts_with_a_vowel?(word)
   if word.match(/^[aeiouAEIOU]/) 
    return true
   else
    return false
   end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.split(" ").map do|word|
    word.scan(/^un.*ing$/i)
  end.flatten
end

def words_five_letters_long(text)
  text.split(" ").collect do |word|
    word.scan(/^[a-zA-Z]{5}$/)
  end.flatten
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    text.match?(/\A[A-Z].*\W$/)
end

def valid_phone_number?(phone)
  true if phone.match(/([0-9]{3})?([-]?[0-9]{3})?([-]?[0-9]{4})/) 
end