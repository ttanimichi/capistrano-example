lock '3.5.0'

set :application, 'capistranoexample'
set :scm, :git
set :repo_url, 'git@github.com:ttanimichi/capistrano-example.git'
set :rails_env, :production
set :deploy_to, '/home/freeza/capistranoexample'
set :keep_releases, 5
set :pty, false

set :linked_dirs, %w(log tmp/pids tmp/cache tmp/sockets public/system)

set :branch, ENV['BRANCH'] || 'master'
set :ssh_options, { forward_agent: true }

set :format, :airbrussh
set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

set :default_env, {}

# namespace :deploy do
#   task :restart do
#     invoke 'unicorn:restart'
#   end
# end
# after 'deploy:publishing', 'deploy:restart'
