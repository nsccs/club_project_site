class Client < ApplicationRecord
     has_secure_password

     validates :name, presence: true, uniqueness: true
     validates :phone_number, presence: true

     belongs_to :user
     has_many :projects

end
