web: bundle exec rails server -p 3000
worker: bundle exec sidekiq
redis: redis-server --port 6379
web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}