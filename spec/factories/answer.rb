FactoryGirl.define do
  factory :answer do
    sequence(:answerer) { |n| "Name #{n}" }
    answer 'Answer'
  end
end
