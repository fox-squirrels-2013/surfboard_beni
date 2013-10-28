require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb sinatra_skeleton_dev`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb sinatra_skeleton_dev`
  end
end

desc "generate new migration file"
task :generate do
  timestamp = Time.now.strftime('%Y%m%d%H%M%S')
  exec "touch db/migrate/#{timestamp}_#{ARGV.last}.rb"
end
