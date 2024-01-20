module PublicApi
  class MutationType < Types::BaseObject
    include PublicApi::MenuMutations::AllMutations
  end
end
