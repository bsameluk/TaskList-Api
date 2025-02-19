# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :projects, [Types::ProjectType], null: false do
      description "List of all projects"
    end

    field :project, Types::ProjectType, null: false do
      description "Get project by ID"
      argument :id, ID, required: true
    end

    field :tasks, [Types::TaskType], null: false do
      description "List of all tasks"
    end

    field :task, Types::TaskType, null: false do
      description "Get task by ID"
      argument :id, ID, required: true
    end

    def projects
      Project.includes(:tasks).all
    end

    def project(id:)
      Project.includes(:tasks).find(id)
    end

    def tasks
      Task.all
    end

    def task(id:)
      Task.find(id)
    end
  end
end
