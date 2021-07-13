class Project < ApplicationRecord
     has_secure_password

     # validates :username, presence: true, uniqueness: true
     # validates :password, presence: true

     belongs_to :client
     has_many :project_users
     has_one :status
     has_one :project_type
end
