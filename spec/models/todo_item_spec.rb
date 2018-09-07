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

require 'rails_helper'

RSpec.describe TodoItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
