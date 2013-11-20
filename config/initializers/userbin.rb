Userbin.configure do |config|
  config.app_id = "YOUR_APP_ID"
  config.api_secret = "YOUR_API_SECRET"

  config.root_path = "/"
  config.protected_path = "/account"

  # Save a local user when a user logs in with Userbin
  config.create_user = Proc.new { |profile|
    User.create! do |user|
      user.userbin_id = profile.id
      user.email      = profile.email
      user.image      = profile.image
    end
  }

  config.find_user = Proc.new { |userbin_id|
    User.find_by_userbin_id(userbin_id)
  }
end