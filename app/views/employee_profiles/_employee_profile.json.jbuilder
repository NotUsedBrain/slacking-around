json.extract! employee_profile, :id, :first_name, :last_name, :date_of_birth, :created_at, :updated_at
json.url employee_profile_url(employee_profile, format: :json)
