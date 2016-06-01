json.array!(@emps) do |emp|
  json.extract! emp, :id, :name, :age, :email, :company_id
  json.url emp_url(emp, format: :json)
end
