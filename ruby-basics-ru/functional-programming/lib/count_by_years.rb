# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  return [] if users.size.zero?
  list_mens_birth = users.each_with_object([]) do |person, dates|
    person[:gender] == 'male' ? dates << person[:birthday].split('-')[0] : []
  end
  list_mens_birth.tally
end
# END
