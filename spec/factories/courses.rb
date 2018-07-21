FactoryBot.define do
  factory :course do
    school
    name "Medicina"
    title "Curando sempre"
    description "Venha aprender a curar"
    content "Os alunos aprenderão de fato a curar pessoas"
    duration 2.years
    students 20
    value 300
  end
end
