module ApplicationHelper
    # Returns the symbol `:user`, which represents the name of the resource being used in the application.
    #
    # @return [Symbol] `:user`
  def resource_name
    :user
  end

  # Returns the class of the resource being used in the application.
  #
  # @return [Class] The class of the resource.
  def resource_class
     User
  end

  # Returns the current resource object, initializing it as a new User instance if it doesn't exist.
  def resource
    @resource ||= User.new
  end

  # Returns the Devise mapping for the user resource.
  #
  # @return [Devise::Mapping] The Devise mapping for the user resource.
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
