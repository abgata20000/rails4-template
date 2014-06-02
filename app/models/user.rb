class User < ActiveRecord::Base
  # attr_accessible :auth, :email, :last_login, :nickname, :nickname_kana, :premium_flg, :premium_limit, :profile, :temporary_flg
  authenticates_with_sorcery!
  
  default_scope {where(:enabled => true)}



  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true

end
