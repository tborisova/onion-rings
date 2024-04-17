module Mutations
  class CreateRecipeMutation < BaseMutation
    argument :title, String, required: true
    argument :kind, String, required: true

    field :recipe, Types::RecipeType

    def resolve(input)
      recipe = Recipe.create! title: input[:title], kind: input[:kind]

      {recipe: }
    end
  end
end
