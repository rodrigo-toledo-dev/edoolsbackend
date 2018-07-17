FactoryBot.define do
  factory :course do
    school
    name "Computação"
    title 'PROXER'
    school
    description 'Aprender por completo computação'
    content 'Redes - Web - Análise de sistemas'
    duration 4.years
    students 10
    price 800
  end
end
