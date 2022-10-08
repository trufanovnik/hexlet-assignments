# frozen_string_literal: true

# BEGIN
def fibonacci(num)
  array = [0, 1]
  if num >= 0
    (num - 1).times do
        array << (array.last + array[-2])
    end
    array[num]
  else
    nil
  end
end
# END
