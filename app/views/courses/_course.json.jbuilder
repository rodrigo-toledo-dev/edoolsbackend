json.extract! course, :id, :school_id, :name, :title, :description, :content, :duration, :students, :value, :created_at, :updated_at
json.url course_url(course, format: :json)
