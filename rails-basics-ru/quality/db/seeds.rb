5.times do |index|
  index += 1
  Bulletin.create(title: "Bulletin title #{index}", body: "Bulletin content #{index}")
end
