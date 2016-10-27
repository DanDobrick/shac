json.extract! student, :id, :first_name, :last_name, :devise_id, :is_crasher, :is_host, :school, :crashable?, :created_at, :updated_at
json.url student_url(student, format: :json)