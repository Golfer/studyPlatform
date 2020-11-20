module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters, if: :devise_controller?

    def update_resource(resource, params)
      resource.update_with_password(params)
    end

    protected

    def configure_permitted_parameters
      customer_key_attrs = %i[name surname photo role]

      devise_parameter_sanitizer.permit :sign_up, keys: customer_key_attrs
      devise_parameter_sanitizer.permit :account_update, keys: customer_key_attrs
    end
  end
end
