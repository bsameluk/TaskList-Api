# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :integer          not null
#
# Indexes
#
#  index_tasks_on_project_id  (project_id)
#
# Foreign Keys
#
#  project_id  (project_id => projects.id)
#
class Task < ApplicationRecord
  belongs_to :project

  validates :name, presence: true
  validates :project, presence: true
end
