class User < ApplicationRecord
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  attr_accessor :password

  before_save :encrypt_password
  after_save :clear_password

  belongs_to :compagny, optional: true

  validates :email, :presence => true, :uniqueness => true #:format => EMAIL_REGEX
  validates :password, :confirmation => true
  validates_length_of :password, :in => 6..20, :on => :create
  validates :lastname, :presence => true, :length => { :in => 3..20 }
  validates :name, :presence => true, :length => { :in => 3..20 }
  validates :birthdate, presence: true, optional: false
  # validates :description, presence: true, optional: false

  # attr_accessible :username, :email, :password, :password_confirmation


  def self.authenticate(name_or_email="", login_password="")

    if  EMAIL_REGEX.match(name_or_email)
      user = User.find_by_email(name_or_email)
    else
      user = User.find_by_name(name_or_email)
    end

    if user && user.match_password(login_password)
      p "==========="
      p name_or_email
      p login_password
      p "==========="
      return user
    else
      return false
    end
  end

  def match_password(password="")
    password == BCrypt::Engine.hash_secret(password, description)
    p password
  end



  def encrypt_password
    unless password.blank?
      self.description = BCrypt::Engine.generate_salt
      self.password = BCrypt::Engine.hash_secret(password, description)
    end
  end

  def clear_password
    self.password = nil
  end

end
