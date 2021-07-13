class User < ApplicationRecord
     has_secure_password

     before_validation :downcase_username

     validates :username, presence: true, uniqueness: true
     validates :password, presence: true

     private

     def downcase_username
       self.username = username.downcase if username.present?
     end
end
