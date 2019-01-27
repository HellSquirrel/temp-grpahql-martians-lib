module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false, description: "Returns a list of users"
    field :items, [Types::ItemType], null: false, description: "Returns a list of items"

    def users
      User.all
    end

    def items
      Item.all
    end
  end
end