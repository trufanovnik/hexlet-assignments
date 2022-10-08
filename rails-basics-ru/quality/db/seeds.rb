3.times do |bulletin|
  bulletin_index = bulletin + 1
  Bulletin.create(title: "Title #{bulletin_index}", body: "Body #{bulletin_index}")
end
