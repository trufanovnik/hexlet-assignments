# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  censored_text = ""
  splitted = text.split(" ")

  for word in splitted
    item = stop_words.include?(word) ? "$#%!" : word
    censored_text += "#{item} "
  end
  censored_text.chop
  # END
end
# rubocop:enable Style/For
