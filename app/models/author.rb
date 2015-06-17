class Author < ActiveRecord::Base
  validates :username, :uniqueness => { :case_sensitive => false }
  validates :username, presence: true, length: { maximum: 30 }
  validates :email, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
