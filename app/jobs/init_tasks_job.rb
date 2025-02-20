class InitTasksJob < ApplicationJob
  queue_as :default

  def perform()
    projects = Project.all

    projects.find_each do |project|
      project.tasks.create(name: "New Task ##{Time.current.to_i}")
    end
  end

end
