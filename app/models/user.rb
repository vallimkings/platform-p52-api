class User < ActiveRecord::Base

  EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

  validates :email, uniqueness: true
  validates_presence_of :email, :name, :password_digest
  validate :email_format
   
  has_secure_password

  private
    def email_format
        errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
    end

end
