require 'bundler/setup'
require 'ruby-clock'
require 'logger'

Rails.logger = Logger.new(STDOUT)
Rails.logger.level = Logger::INFO

using RubyClock::DSL

Rails.logger.info "Starting clockwork in #{Rails.env} environment..."

every('2 minutes') do
  Rails.logger.info "Running InitTasksJob at #{Time.now}"
  InitTasksJob.perform_later
  Rails.logger.info "InitTasksJob enqueued successfully"
end

Rails.logger.info "Clockwork initialized successfully!"
