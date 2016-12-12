  json.id employee.id
  json.firstName employee.first_name
  json.lastName employee.last_name
  json.fullName employee.full_name
  json.company_email employee.email
  json.ssn employee.ssn
  json.birthdate employee.birthdate
  json.addresses employee.addresses.each do |address|
    json.address_1 address.address_1
    json.address_2 address.address_2
    json.city address.city
    json.state address.state
    json.zip address.zip
  end
