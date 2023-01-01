# == Schema Information
#
# Table name: todos
#
#  id         :bigint           not null, primary key
#  atatus     :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Todo < ApplicationRecord
end
