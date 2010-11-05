Capistrano::Configuration.instance(:must_exist).load do
  set(:rake) { "PATH=$PATH:/home/#{site}/data/rubygems/bin:/home/#{site}/data/rubygems/gems/bin RUBYLIB=/home/#{site}/data/rubygems/local/lib/site_ruby/1.8:/home/#{site}/data/rubygems/lib GEM_HOME=/home/#{site}/data/rubygems/gems rake" }
  
  # Set up the mt namespace and tasks
  namespace :mt do

    desc "Register the application with the (gs) Container using 'mtr add'."
    task :add do
      run "mtr -u #{user} -p #{password} add #{application} #{deploy_to}/current #{webpath}"
    end

    %w{remove start stop restart create_link generate_htaccess info}.each do |command|
      desc "Runs 'mtr #{command} <appname>' on the (gs) Container."
      task command.to_sym do
        run "mtr -u #{user} -p #{password} #{command} #{application}"
      end
    end
    
    %w{list status}.each do |command|
      desc "Runs 'mtr #{command}' on the (gs) Container."
      task command.to_sym do
        run "mtr -u #{user} -p #{password} #{command}"
      end
    end
    
    # Add a little automation to the process.
    after "deploy:setup", "mt:add"
    after "mt:generate_htaccess", "mt:create_link"
    after "deploy:symlink", "mt:generate_htaccess"
  
  end

  namespace :deploy do
    
    %w{start stop restart}.each do |command|
      desc "#{command.capitalize} the application on the (gs) Container."
      task command.to_sym do
        mt.send(command)
      end
    end
    
  end
end
