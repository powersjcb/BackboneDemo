# == Schema Information
#
# Table name: comments
#
#  id                :integer          not null, primary key
#  content           :string           not null
#  todo_list_item_id :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Comment < ActiveRecord::Base
  validates :content, :todo_list_item, presence: true

  belongs_to :todo_list_item, inverse_of: :comments
  has_one :todo_list, through: :todo_list_item, source: :todo_list
end
