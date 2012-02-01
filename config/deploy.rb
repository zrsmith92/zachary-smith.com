set :application, "zachary-smith.com"
set :repository,  "git@github.com:zrsmith92/zachary-smith.com.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, 'ec2-user'
set :use_sudo, false
set :deploy_to, '/var/www/#{ application }'
set :deploy_via, :remote_cache

role :web, "zachary-smith.com"                          # Your HTTP server, Apache/etc
role :app, "zachary-smith.com"                          # This may be the same as your `Web` server
role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:

before "deploy:precompile_assets", "deploy:clean_assets"
before "deploy", "deploy:precompile_assets"

after "deploy", "deploy:restart"

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  task :precompile_assets do
  	system "rake assets:precompile"
  end

  task :clean_assets do
  	system "rake assets:clean"
  end
end