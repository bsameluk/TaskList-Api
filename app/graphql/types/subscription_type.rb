module Types
  class SubscriptionType < Types::BaseObject
    field :task_added, Types::TaskType, null: false,
          description: "Get task added notification"

    def task_added
      object
    end
  end
end
