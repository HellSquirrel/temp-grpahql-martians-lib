module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false, description: "Returns a list of users"

    def users
      User.includes(:added_items)
    end

    field :items, [Types::ItemType], null: false, description: "Returns a list of items" do
      argument :page, Integer, required: false, default_value: 1
      argument :per_page, Integer, required: false, default_value: 10
    end

    def items(page:, per_page:)
      Item.includes(:added_by).page(page).per([per_page, 50].min)
    end
  end
end