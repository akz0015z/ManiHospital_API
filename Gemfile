source "https://rubygems.org"

# Core Rails framework
gem "rails", "~> 8.1.1"

# SQLite for development & testing
gem "sqlite3", "~> 2.1"

# Production database on Render (PostgreSQL)
gem "pg", "~> 1.4"

# CORS so your frontend can access backend
gem "rack-cors"

# Web server (Render uses Puma automatically)
gem "puma", "~> 6.0"

# Secure password hashing for manual login
gem "bcrypt", "~> 3.1.7"

# Background jobs / caching / ActiveStorage
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Improve boot performance
gem "bootsnap", require: false

# Image processing for ActiveStorage
gem "image_processing", "~> 1.2"

# Deployment tool (optional but safe)
gem "kamal", require: false

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

# Windows timezone
gem "tzinfo-data", platforms: %i[windows jruby]
