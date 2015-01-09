Eye.application 'gogs' do
  working_dir '/gogs'
  stdall '/var/log/eye/gogs-stdall.log' # stdout,err logs for processes by default
  trigger :flapping, times: 10, within: 1.minute, retry_in: 3.minutes
  check :cpu, every: 10.seconds, below: 100, times: 3 # global check for all processes

  process :gogs do
    pid_file '/var/run/gogs-eye.pid'
    start_command 'sudo -i /root/gogs.sh'

    daemonize true
    start_timeout 10.seconds
    stop_timeout 5.seconds

  end

end
