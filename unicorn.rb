@dir = '/var/www/ratchet.razzle.io/'

worker_processes 2
working_directory "#{@dir}/current"

timeout 30

listen "#{@dir}tmp/sockets/unicorn.sock", :backlog => 64

pid "#{@dir}tmp/pids/unicorn.pid"

stderr_path "#{@dir}log/unicorn.stderr.log"
stdout_path "#{@dir}log/unicorn.stdout.log"
