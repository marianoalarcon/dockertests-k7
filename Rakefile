# frozen_string_literal: true

require 'rubycritic_small_badge'
require 'rubycritic/rake_task'
require 'sandi_meter/file_scanner'

{ spec: 65, lib: 85 }.each do |dir, percentage|
  RubyCriticSmallBadge.configure do |config|
    config.minimum_score = ENV.fetch('RUBYCRITICLIMIT', percentage)
    config.output_path = ENV.fetch('RUBYCRITPATH', "badges/#{dir}")
    print "Path to save: #{config.output_path}"
  end
  
  RubyCritic::RakeTask.new("rubycritic:#{dir}") do |task|
    task.options = %(
      --custom-format RubyCriticSmallBadge::Report
      --minimum-score #{RubyCriticSmallBadge.config.minimum_score}
      --format html
      --path tmp/rubycritic/#{dir}
      --format console
    )
    task.paths = FileList["app/#{dir}/*.rb"]
  end
end

task 'rubycritic' do
  Rake::Task['rubycritic:lib'].execute
  Rake::Task['rubycritic:spec'].execute
end

task :sandi_meter do
  pp `sandi_meter -g -o ./sandi_meter -p ./lib`
end

task :tests do
  system 'rspec app/spec/*.rb --format doc'
end

# task :code do
#   system 'ruby app/lib/models/*.rb'
# end

task default: %i[rubycritic sandi_meter]
