web: unicorn -E production -p $PORT
job: bundle exec bin/fluentd-server job
serf: $(bundle exec gem path serf-td-agent)/bin/serf agent
