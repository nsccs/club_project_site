class Project < ApplicationRecord
     validates :title, presence: true, uniqueness: true, on: :create
     validates :project_type_id, presence: true
     validates :client_id, presence: true

     has_many :project_users
     has_many :users, :through => :project_users
     belongs_to :client
     belongs_to :status
     belongs_to :project_type
end
