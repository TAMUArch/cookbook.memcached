default[:memcached][:run_as_daemon] = true
default[:memcached][:pid_file] = "/var/run/memcached.pid"
default[:memcached][:logfile] = "/var/log/memcached.log"
default[:memcached][:verbosity] = "-v"
default[:memcached][:lock_mem] = false
default[:memcached][:use_unix_socket] = false
default[:memcached][:unix_socket]
default[:memcached][:listen_ip] = "0.0.0.0"
default[:memcached][:listen_tcp] = "11211"
default[:memcached][:listen_udp] = "11211"
default[:memcached][:user] = "nobody"
default[:memcached][:max_connections] = "8192"
default[:memcached][:processor_count] = "1"
default[:memcached][:max_mem] = "90%"
default[:memcached][:config] = "/etc/memcached.conf"
default[:memcached][:service_name] = "memcached"
default[:memcached][:package] = "memcached"
