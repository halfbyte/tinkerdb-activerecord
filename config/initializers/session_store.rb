# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tinkerdb_session',
  :secret      => 'd742dad1de8771e06bd1cf84cea9c15caec06154a14b7f00d91b071bbe053bde6ee80fd3b88b96b06275279b5b9d6ad3a4ca26d8ec23dd44f465dfb31da9a7db'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
