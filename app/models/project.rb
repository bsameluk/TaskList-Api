# == Schema Information
#
# Table name: projects
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :name, presence: true
end
