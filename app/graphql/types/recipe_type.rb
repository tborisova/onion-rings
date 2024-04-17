module Types
  class RecipeType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :keywords, String, null: true
    field :url, String, null: true
    field :kind, String, null: false

    def id
      object.to_gid_param
    end
  end
end
