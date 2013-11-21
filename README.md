Rails + Userbin boilerplate
======================================

Userbin for Ruby adds user authentication, login flows and user management to your **Rails**, **Sinatra** or **Rack** app.

[Userbin](https://userbin.com) provides a set of login, signup, and password reset forms that drop right into your application without any need of styling or writing markup. Connect your users via traditional logins or third party social networks. We take care of linking accounts across networks, resetting passwords, and keeping everything safe and secure.

[Create a free account](https://userbin.com) at Userbin to start accepting users in your application.


Configuration for non-Heroku
----------------------------

Change the following code in `config/initializers/userbin.rb` to include the credentials you got from signing up.

```ruby
Userbin.configure do |config|
  config.app_id = "YOUR_APP_ID"
  config.api_secret = "YOUR_API_SECRET"
end
```

If you don't configure the `app_id` and `api_secret`, the Userbin module will read the `USERBIN_APP_ID` and `USERBIN_API_SECRET` environment variables. This may come in handy on Heroku.


Deploy to Heroku
----------------

1. Clone the repo

    ```bash
    $ git clone git@github.com:userbin/userbin-rails-boilerplate.git
    ```

1. Navigate to the project and create a new Heroku app:

    ```bash
    $ heroku create
    ```

1. Add the Userbin Heroku add-on

    ```bash
    $ heroku addons:add userbin
    ```

1. Setup database

    ```bash
    $ heroku run rake db:setup
    ```

1. Deploy

    ```bash
    $ git push heroku master
    ```

1. Open the app in your browser:

    ```bash
    $ heroku open
    ```

1. When you're done playing around, open the Userbin dashboard to configure your application, add social login and customize emails.

    ```bash
    heroku addons:open userbin
    ```

Check out the [Userbin Ruby gem](https://github.com/userbin/userbin-ruby) on Github for more details on how to work with Userbin in your Rails application.


Further configuration and customization
---------------------------------------

Your Userbin dashboard gives you access to a range of functionality:

- Configure the appearance of the login widget to feel more integrated with your service
- Connect 10+ OAuth providers like Facebook, Github and Google.
- Use Markdown to generate mobile-ready transactional emails
- Invite users to your application
- See who is logging in and when
- User management: block, remove and impersonate users
- Export all your user data from Userbin


Documentation
-------------
For complete documentation go to [userbin.com/docs](https://userbin.com/docs)
