# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :projects, [Types::ProjectType], null: false do
      description "List of all projects"
    end

    field :tasks, [Types::TaskType], null: false do
      description "List of tasks by project ID"
      argument :project_id, GraphQL::Types::String, required: true, camelize: false
    end

    def projects
      Project.includes(:tasks).all
    end

    def tasks(project_id: nil)
      Task.where(project_id: project_id)
    end
  end
end
