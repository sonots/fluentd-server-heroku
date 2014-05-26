# heroku login
# heroku destroy fluentd-server
# heroku create fluentd-server
git push heroku master
heroku pg:reset DATABASE --confirm fluentd-server
heroku run bundle exec fluentd-server init
heroku run bundle exec ruby seed.rb
heroku restart
