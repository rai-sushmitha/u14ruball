#!/bin/bash -e

echo "================= Installing Ruby 2.1.3 ==================="
rvm requirements
rvm install ree-1.8.7
rvm use ree-1.8.7

# Install ruby gems
gem install bundler
