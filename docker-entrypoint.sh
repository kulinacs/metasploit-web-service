cd /opt/metasploit-framework
bundle exec rake db:create
bundle exec rake db:migrate
exec thin --rackup /opt/metasploit-framework/msf-ws.ru --address 0.0.0.0 --port 8080 --environment production start
