set :application, "sample_app_rails"
set :repo_url, "git@github.com:samdanielatgithub/sample_app_rials.git"

set :deploy_to, '/home/boomerangbike/sample_cap_deploy'
#set :scm, :git

#set :linked_files, %w{config/database.yml}
#set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
#set :rbenv_path, '$HOME/deploy/.rbenv'

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 1 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart
  after :finishing, 'deploy:cleanup'
end

#lock "~> 3.11.0"

#set :application, "my_app_name"
#set :repo_url, "https://github.com/samdanielatgithub/sample_app_rials.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
#puts "hif"
# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/home/sequoia/bin"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
 #set :ssh_options, verify_host_key: :secure
