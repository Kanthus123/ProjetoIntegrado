class User2 < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user2|
      user2.provider = auth.provider
      user2.uid = auth.uid
      user2.name = auth.info.name
      user2.oauth_token = auth.credentials.token
      user2.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user2.save!
    end
  end
end
