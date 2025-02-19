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
require 'rails_helper'

RSpec.describe Task, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
