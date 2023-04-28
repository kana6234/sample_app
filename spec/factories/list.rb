FactoryBot.define do
  factory :list do
    title { Faker::Lorem.characters(number: 10) }
    body { Faker::Lorem.characters(number: 30) }
    after(:build) do |item|
      item.image.attach(io: File.open("spec/fixtures/sample.jpg"), filename: "sample.jpg", content_type: "image/jpg")
    end
  end
end
