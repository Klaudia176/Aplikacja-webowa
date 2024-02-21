class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :dissertations
    enum role: [:student, :promoter, :admin]
    def set_default_role
        self.role ||= :student
    end
end