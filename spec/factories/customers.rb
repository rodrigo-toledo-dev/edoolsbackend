FactoryBot.define do
  factory :customer, aliases: [:client_proxer] do
    w4m
    name "Cliente Proxer"
    address "Rua ABC"
    code 'PROXER'
    latitude -22.9068467
    longitude -43.1728965
  end
end
