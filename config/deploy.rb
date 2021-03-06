# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'sonu_app'
set :repo_url, 'https://github.com/ghanshyamanand/sonu_app.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'
set (:deploy_to) { "/home/ghanshyam/sonu_app/production" }


# Default value for :scm is :git
set :scm, :git

set :rvm_ruby_string, '2.2.0'             # ruby version you are using...
set :rvm_type, :user


# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5


# before "deploy:assets:precompile","deploy:config_symlink"
# before "deploy:assets:precompile","deploy:rename_tinymce"


# after "deploy:update", "deploy:cleanup" #clean up temp files etc.
# after "deploy:update_code","deploy:migrate"


