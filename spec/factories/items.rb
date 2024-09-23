# Source: https://github.com/thoughtbot/factory_bot_rails/blob/v6.4.2/lib/generators/factory_bot/model/templates/factories.erb
FactoryBot.define do
  factory :item do
    name { "MyString" }
    track
    status { 1 }
  end
  # Here !!!
end
