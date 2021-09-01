class EmployerMailer < ApplicationMailer

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def employer_signup_email(employer)
    @employer = employer
    mail( :to => @employer.email,
    :subject => 'Thanks for signing up for Shiift' )
  end

  def job_application_email(employer, job_application)
    @employer = employer
    @job_application = job_application

    mail(
      :to => @employer.email,
      :subject => 'New job application!' 
    )      
  end
end
