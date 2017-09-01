class User < ApplicationRecord
    before_save { self.email = email.downcase! }
    validates :name, presence: true, length: { maximum: 50 } 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqeness: true { case_sensitive: false }

    has_secure_password # bicrypt gem's helper method, it allows to use "authenticate method which returns either false or the user object itself"
    validates :password, presence: true, length: { minimum: 6 }
end
