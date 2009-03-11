# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nytimes_session',
  :secret      => 'b9a1b1f46153e165645d013e111f192d358b86ecdf0345d8b8b00391b28f1f80b3d6a4d8440ab933c1586829084b2749f6e4ce7a4b94dbf14e065f717d69d12c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
