# == Schema Information
#
# Table name: todos
#
#  id         :bigint           not null, primary key
#  status     :integer          default(0)
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Todo < ApplicationRecord
  validates :title, presence: true
  after_update_commit { broadcast_append_to 'todos' }

  enum status: %i[incomplete complete].freeze
end
