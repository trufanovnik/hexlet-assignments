# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return if start > stop
  string = ""
  while start <= stop
      string += rewrite(start)
      start += 1
  end
  string.chop
end

def rewrite(num)
  if (num % 15).zero?
      'FizzBuzz '
  elsif (num % 3).zero?
      'Fizz '
  elsif (num % 5).zero?
      'Buzz '
  else
      "#{num} "
  end
end
# END