FactoryBot.define do
  factory :job do
    client_proxer
    sla 1.5
    sla_expires_at "2018-07-13 03:14:37"
    requester_name "PROXER"
  end
end
