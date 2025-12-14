# Use official Ruby image
FROM ruby:3.2

# Install system dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client

# Set working directory
WORKDIR /app

# Copy Gemfiles and install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the Rails app
COPY . .

# Set production env for Rails
ENV RAILS_ENV=production

# Precompile assets only if they exist (safe for API-only apps)
RUN bundle exec rake assets:precompile || true

# Expose Render's port
EXPOSE 3000

# Start command for Render:
# 1. Load DB schema automatically (Render free tier cannot run migrations)
# 2. Boot Rails server on the port Render assigns
CMD rails db:schema:load && \
    bundle exec rails server -b 0.0.0.0 -p ${PORT:-3000}
