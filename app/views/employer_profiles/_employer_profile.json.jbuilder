json.extract! employer_profile, :id, :first_name, :last_name, :business_name, :created_at, :updated_at
json.url employer_profile_url(employer_profile, format: :json)
