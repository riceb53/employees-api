  json.id employee.id
  json.firstName employee.first_name
  json.lastName employee.last_name
  json.fullName employee.full_name
  json.company_email employee.email
  json.ssn employee.ssn
  json.birthdate employee.birthdate
  json.addresses employee.addresses.each do |address|
    address.address_1
    address.address_2
    address.city
    address.state
    address.zip
  end
