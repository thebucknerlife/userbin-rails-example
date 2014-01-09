Userbin.configure do |config|

  # Uncomment these lines to set your app ID and API secret.
  # If they are not set they will be read from ENV
  # config.app_id = "YOUR_APP_ID"
  # config.api_secret = "YOUR_API_SECRET"

  # Save a local user when a user logs in with Userbin
  config.create_user = -> (profile) do
    User.create! do |user|
      user.userbin_id = profile.id
      user.email      = profile.email
      user.image      = profile.image
    end
  end

  config.find_user = -> (userbin_id) do
    User.find_by_userbin_id(userbin_id)
  end
end
