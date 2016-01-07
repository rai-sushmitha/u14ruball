u14ruball
================

Shippable CI image for Ruby on Ubuntu 14.04 with all services. Available versions are:

1. 1.8.7
2. 1.9.3
3. 2.0.0
4. 2.1.5
5. 2.2.1

**Services:**

1. cassandra 2.1
2. elasticsearch 1.5
3. memcached 1.4
4. mongodb 3.0
5. mysql 5.6
6. neo4j 2.2
7. postgres 9.4
8. rabbitmq 3.5
9. redis 3.0
10. selenium 2.45
11. sqllite 3
12. couchdb 1.6
13. rethinkdb 2.0
14. riak latest

## How to use
You can use this image to run ruby builds on Shippable. Just update your
`shippable.yml` file and add the `build_image` directive. You should also
activate the appropriate rvm so your build runs against the
correct version of ruby. You can use `$SHIPPABLE_RUBY` environment variable to specify ruby versions. Here's a sample YML file to get you going:

````

language: ruby
build_image: drydock/u14ruball:prod

rvm:
  - 1.8.7
  - 1.9.3
  - 2.0.0
  - 2.1.5
  - 2.2.1

services:
  - cassandra
  - elasticsearch
  - memcached
  - mongodb
  - mysql
  - neo4j
  - postgres
  - rabbitmq
  - redis
  - selenium
  - sqllite
  - couchdb
  - rethinkdb
  - riak

before_install:
 - source ~/.rvm/scripts/rvm
 - rvm install $SHIPPABLE_RUBY --verify-downloads 1
 - source ~/.bashrc && ~/.rvm/scripts/rvm && rvm use $SHIPPABLE_RUBY
 
install:
 - bundle install --gemfile="Gemfile"
 - ruby -v

script:
- bundle exec rake

````
