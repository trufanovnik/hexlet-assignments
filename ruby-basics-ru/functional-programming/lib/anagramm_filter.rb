# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, list)
  word_char = word.chars.sort
  list.filter do |word_fromlist|
    word_char == word_fromlist.chars.sort ? word_fromlist : nil
  end
end
# END
