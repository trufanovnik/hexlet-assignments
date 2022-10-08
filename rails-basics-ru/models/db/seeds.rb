# frozen_string_literal: true
require 'faker'

3.times do
  Article.create(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph 
  )
end