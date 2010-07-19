# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_musicFest_session',
  :secret      => 'da216a4fb72e142c2df74c0d659648ccddb7835cd40cbdb963746123df1912979872553820a9cb1022fafef8818a36c93f2a0b02e0e3d08eaf45a707127ec75f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
