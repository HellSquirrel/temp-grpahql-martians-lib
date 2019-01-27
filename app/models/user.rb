
class User < ApplicationRecord
    has_many :added_items, class_name: 'Item', inverse_of: :added_by, foreign_key: :added_by_id
  end
  # app/models/item.rb
  class Item < ApplicationRecord
    belongs_to :added_by, class_name: 'User'
  end