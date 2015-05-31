# == Schema Information
#
# Table name: todo_lists
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TodoList < ActiveRecord::Base
  validates :name, presence: true

  has_many :todo_list_items, inverse_of: :todo_list
  has_many :comments, through: :todo_list_items, source: :comments

end
