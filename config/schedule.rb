require File.expand_path(File.dirname(__FILE__) + "/environment")
set :output, 'log/cron.log'

# 1分毎に回す
every 1.minute do
  rake 'controller:package'
end