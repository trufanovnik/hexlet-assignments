# frozen_string_literal: true

3.times do |i|
  task_index = i + 1
  Task.create!(
    name: Faker::Verb.ing_form,
    description: Faker::Lorem.paragraphs.join("\n"),
    status: Faker::Subscription.status,
    creator: Faker::Name.unique.name,
    performer: Faker::Name.unique.name,
    completed: Faker::Boolean.boolean(true_ratio: 0.5)
  )
end
