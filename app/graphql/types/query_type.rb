module Types
  class QueryType < GraphQL::Schema::Object
    description "The query root of this schema"

    # First describe the field signature:
    field :post, PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end

    field :all_post, [PostType], null: true do
    end

    def post(id:)
      Post.find(id)
    end

    def all_post
      all_post.all
    end
  end
end

