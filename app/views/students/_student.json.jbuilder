json.extract! student, :id, :name, :sex, :dateofbirth, :cellphonenumber, :address, :highschool_id, :testcenter_id, :created_at, :updated_at
json.url student_url(student, format: :json)
