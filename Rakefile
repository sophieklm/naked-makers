# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

# run task: bundle exec rake deploy:staging:promote
# run task: bundle exec rake deploy:production:promote

staging_app     = 'naked-makers-staging'
production_app  = 'naked-makers'

namespace :deploy do
  namespace :staging do
    task :promote do
      start_time = Time.now

      Bundler.with_clean_env do
        puts "Maintenance On"
        puts `heroku maintenance:on -a #{staging_app}`

        puts "Migrate Staging Database"
        puts `heroku run rake db:migrate -a #{staging_app}`

        puts "Seed Staging Database"
        puts `heroku run rake db:seed -a #{staging_app}`

        puts "Restart Staging"
        puts `heroku restart -a #{staging_app}`

        puts "Maintenance Off"
        puts `heroku maintenance:off -a #{staging_app}`
      end

      puts "[#{Time.now - start_time}] Total Time"
    end
  end
end

namespace :deploy do
  namespace :production do
    task :promote do
      start_time = Time.now

      Bundler.with_clean_env do
        puts "Maintenance On"
        puts `heroku maintenance:on -a #{production_app}`

        puts "Migrate Production Database"
        puts `heroku run rake db:migrate -a #{production_app}`

        puts "Seed Production Database"
        puts `heroku run rake db:seed -a #{production_app}`

        puts "Restart Production"
        puts `heroku restart -a #{production_app}`

        puts "Maintenance Off"
        puts `heroku maintenance:off -a #{production_app}`
      end

      puts "[#{Time.now - start_time}] Total Time"
    end
  end
end
