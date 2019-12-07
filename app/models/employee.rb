class Employee < ApplicationRecord
  has_one :employee_profile, dependent: :destroy
  accepts_nested_attributes_for :employee_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  
  has_many :job_applications
  has_many :job_postings, through: :job_applications
  has_many :feedbacks



def employee_profile
  super || build_employee_profile
end 

  
end
