# == Schema Information
#
# Table name: todo_items
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  title      :string(255)
#  contents   :string(255)
#  due_date   :datetime
#  done_flag  :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TodoItem < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true

  def self.search(search)
    if search
      TodoItem.where(['title LIKE ? OR contents LIKE ?', "%#{search}%", "%#{search}%"])
    else
      TodoItem.all
    end
  end

end
