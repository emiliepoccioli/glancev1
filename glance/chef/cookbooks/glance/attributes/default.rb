#
# Cookbook Name:: glance
# Attributes:: default
#
# Copyright 2011, Opscode, Inc.
# Copyright 2011, Dell, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

override[:glance][:user]="glance"

default[:glance][:verbose] = "False"
default[:glance][:debug] = "False"

default[:glance][:api][:bind_host] = ipaddress
default[:glance][:api][:bind_port] = "9292"
default[:glance][:api][:log_file] = "/var/log/glance/api.log"
default[:glance][:api][:config_file]="/etc/glance/glance-api.conf"
default[:glance][:api][:paste_ini]="/etc/glance/glance-api-paste.ini"

default[:glance][:registry][:bind_host] = ipaddress
default[:glance][:registry][:bind_port] = "9191"
default[:glance][:registry][:log_file] = "/var/log/glance/registry.log"
default[:glance][:registry][:config_file]="/etc/glance/glance-registry.conf"
default[:glance][:registry][:paste_ini]="/etc/glance/glance-registry-paste.ini"

######## Glance RabbitMQ Attributes ########
# RabbitMQ endpoint
default["glance"]["rabbitmq"]["host"] = "localhost"
# RabbitMQ port
default["glance"]["rabbitmq"]["port"] = "5672" 
# RabbitMQ user
default["glance"]["rabbitmq"]["user"] = "guest" 
# RabbitMQ password
default["glance"]["rabbitmq"]["password"] = "guest" 
# RabbitMQ vhost
default["glance"]["rabbitmq"]["vhost"] = "/" 
# RabbitMQ Use SSL
default["glance"]["rabbitmq"]["ssl"] = false 

default[:glance][:cache][:log_file] = "/var/log/glance/cache.log"
default[:glance][:cache][:config_file]="/etc/glance/glance-cache.conf"

default[:glance][:prefetcher][:log_file] = "/var/log/glance/prefetcher.log"
default[:glance][:prefetcher][:config_file]="/etc/glance/glance-prefetcher.conf"

default[:glance][:pruner][:log_file] = "/var/log/glance/pruner.log"
default[:glance][:pruner][:config_file]="/etc/glance/glance-pruner.conf"

default[:glance][:reaper][:log_file] = "/var/log/glance/reaper.log"
default[:glance][:reaper][:config_file]="/etc/glance/glance-reaper.conf"

default[:glance][:scrubber][:log_file] = "/var/log/glance/scrubber.log"
default[:glance][:scrubber][:config_file]="/etc/glance/glance-scrubber.conf"

default[:glance][:working_directory]="/var/lib/glance"
default[:glance][:pid_directory]="/var/run/glance"
default[:glance][:image_cache_datadir] = "/var/lib/glance/image-cache/"

default[:glance][:sql_connection] = "sqlite:////var/lib/glance/glance.sqlite"
default[:glance][:sql_idle_timeout] = "3600"

#default_store choices are: file, http, https, swift, s3
default[:glance][:default_store] = "file"
default[:glance][:filesystem_store_datadir] = "/var/lib/glance/images"

default[:glance][:swift_store_auth_address] = "127.0.0.1:8080/v1.0/"
default[:glance][:swift_store_user] = "swiftuser"
default[:glance][:swift_store_key] = "swift_store_key"
default[:glance][:swift_store_container] = "glance"
default[:glance][:swift_store_create_container_on_put] = "False"

# automatically glance upload the tty linux image. (glance::setup recipe)
default[:glance][:tty_linux_image] = "http://c3226372.r72.cf0.rackcdn.com/tty_linux.tar.gz"

# declare what needs to be monitored
node[:glance][:monitor]={}
node[:glance][:monitor][:svcs] = []
node[:glance][:monitor][:ports]={}

