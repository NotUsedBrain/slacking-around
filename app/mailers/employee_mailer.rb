class EmployeeMailer < ApplicationMailer
  default :from => 'Shiift__@hotmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def employee_signup_email(employee)
    @employee = employee
    mail( :to => @employee.email,
    :subject => 'Thanks for signing up for Shiift' )
  end

end
