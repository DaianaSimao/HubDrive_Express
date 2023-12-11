class User < ApplicationRecord
  belongs_to :people
  accepts_nested_attributes_for :people

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook google_oauth2 github]

  def self.from_omniauth(auth)
    existing_user = User.find_by(email: auth.info.email)

    if existing_user
      existing_user.update!(provider: auth.provider, uid: auth.uid)
      existing_user
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0, 20]
        user.password_confirmation = user.password
      end
    end
  end
end
