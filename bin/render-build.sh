#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
./bin/rails assets:precompile
./bin/rails assets:clean
./bin/rails db:reset DISABLE_DATABASE_ENVIRONMENT_CHECK=1