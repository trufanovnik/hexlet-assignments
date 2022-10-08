# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(params)
  string = ''
  keys = params.sort
  for i in 0...keys.size
	string += keys[i].join('=') + '&'
  end
  string.chop
end
# END
# rubocop:enable Style/For
