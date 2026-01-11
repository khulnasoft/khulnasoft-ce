# Makefile for Ruby on Rails project

.PHONY: setup server test console

# Setup the project dependencies
# NOTE: This project requires a specific Ruby version (e.g., 1.9.3 or 2.0.0)
# to run `bundle install` successfully. The current environment has
# issues installing these older Ruby versions. Refer to final_explanation.md for details.
setup:
	@echo "Installing Ruby gems..."
	bundle install

# Start the Rails development server
server:
	@echo "Starting Rails server..."
	rails server

# Run RSpec tests
test:
	@echo "Running RSpec tests..."
	bundle exec rspec

# Open the Rails console
console:
	@echo "Opening Rails console..."
	rails console
