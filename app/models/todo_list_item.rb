# == Schema Information
#
# Table name: todo_list_items
#
#  id           :integer          not null, primary key
#  content      :string           not null
#  todo_list_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TodoListItem < ActiveRecord::Base
  validates :content, :todo_list, presence: true

  belongs_to :todo_list, inverse_of: :todo_list_items
  has_many :comments, inverse_of: :todo_list_item

end
