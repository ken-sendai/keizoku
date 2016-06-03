class User < ActiveRecord::Base
<<<<<<< HEAD
  has_many :products
=======
>>>>>>> ac66dd36a2730c9829d960ddcef508e076f6603f
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
