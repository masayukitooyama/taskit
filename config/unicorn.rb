worker_processes 1
app_path = "/var/www/taskit"
listen "#{app_path}/tmp/sockets/unicorn.sock"
pid "#{app_path}/tmp/pids/unicorn.pid"
#何秒でタイムアウトするか
timeout 60
#ダウンタムをなくす
preload_app true
# 標準出力ログ・標準出力エラーログ出力先
stdout_path "#{app_path}/log/stdout.log"
stderr_path "#{app_path}/log/stderr.log"
before_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!
  old_pid = "#{ server.config[:pid] }.oldbin"
  unless old_pid == server.pid
    begin
      Process.kill :QUIT, File.read(old_pid).to_i
      rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end
after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
GC.respond_to?(:copy_on_write_friendly=) and GC.copy_on_write_friendly = true
