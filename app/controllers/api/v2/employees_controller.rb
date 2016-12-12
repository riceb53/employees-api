class V2::EmployeesController < ApplicationController
  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def index
    @employees = Employee.all
    render 'index.json.jbuilder'
  end

  def create
    @employee = Employee.create(
      first_name: params[:form_first_name],
      last_name: params[:form_last_name],
      email: params[:email],
      ssn: params[:ssn],
      )
    render 'show.json.jbuilder'
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(
      first_name: params[:first_name] || @employee.first_name,
      last_name: params[:last_name] || @employee.last_name,
      email: params[:email] || @employee.email,
      ssn: params[:ssn] || @employee.ssn,
      birthdate: params[:birthdate] || @employee.birthdate,
      )
    render 'show.json.jbuilder'
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    render json: {message: "Employee successfully deleted"}
  end
end


