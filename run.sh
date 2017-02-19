#trap "pkill unicorn_rails ; exit " SIGINT SIGTERM SIGKILL
bundle exec unicorn -c ./config/unicorn.rb
