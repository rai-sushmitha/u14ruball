#!/bin/bash -e

echo "================= Installing REE 1.9.3 ==================="
rvm requirements
rvm install ree-1.9.3
rvm use ree-1.9.3

# Install ruby gems
gem install bundler
