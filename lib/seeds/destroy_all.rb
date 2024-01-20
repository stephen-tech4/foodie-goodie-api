module Seeds
  module DestroyAll
    module_function

    # Convenient way to destroy all records before reseed
    def destroy
      Menu.destroy_all
      Section.destroy_all
      Item.destroy_all
      ModifierGroup.destroy_all
    end
  end
end