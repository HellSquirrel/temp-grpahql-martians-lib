class Types::UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :full_name, String, null: false

    def full_name
        [object.first_name, object.last_name].compact.join(" ")
    end

    field :added_items, [Types::ItemType], null: false
end