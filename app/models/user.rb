class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



 	def admin?
 		role == 'admin'
 	end

 	def supervisor?
 		role == 'supervisor'
 	end

 	def employee?
 		role == 'employee'
 	end


end
