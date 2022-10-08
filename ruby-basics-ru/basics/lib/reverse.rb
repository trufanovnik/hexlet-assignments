# frozen_string_literal: true

# BEGIN
def reverse(word)
  reversed_string = ""
  i = 1
  while i <= word.length
	reversed_string += word.chars[-i]
	i += 1
  end
  reversed_string
end
# END
