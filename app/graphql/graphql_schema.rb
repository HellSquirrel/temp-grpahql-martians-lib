class GraphqlSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)


  max_depth 5

end
