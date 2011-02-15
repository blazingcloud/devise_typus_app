class User < ActiveRecord::Base

  ROLE = Typus::Configuration.roles.keys.sort
  LOCALE = Typus.locales

  enable_as_typus_user

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me
end
