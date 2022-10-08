# frozen_string_literal: true


# BEGIN
def get_same_parity(numbers)
  return [] if numbers.size.zero?
  numbers.select do |num|
    if numbers[0].odd?
        num.odd?
    else
        num.even?
    end
  end
end
# END
