class Types::ItemType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :added_by, Types::UserType, null: false
end