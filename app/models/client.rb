class Client < ApplicationRecord
     validates :name, presence: true, uniqueness: true
     validates :phone_number, presence: true
     validates :user_id, presence: true

     belongs_to :user
     has_many :projects

end
