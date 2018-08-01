# == Schema Information
#
# Table name: tweets
#
#  id         :integer          not null, primary key
#  author     :string
#  content    :text
#  img_url    :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :tweet do
    sequence(:author) { Faker::StarWars.character }
    sequence(:title) { Faker::StarWars.quote }
    sequence(:img_url) { Faker::Avatar.image }
    sequence(:content) { Faker::Lorem.paragraphs.join(' ') }

    trait :with_hashtags do
      hashtags { [FactoryBot.build(:hashtag)] }
    end
  end
end
