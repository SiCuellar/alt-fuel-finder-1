FactoryBot.define do
  factory :station do
    sequence(:name) {|n| "name #{n}"}
    sequence(:address) {|n| "address #{n}"}
    sequence(:fuel) {|n| "fuel #{n}"}
    sequence(:distance) {|n| "distance #{n}"}
    sequence(:atime) {|n| "atime #{n}"}
  end
end
