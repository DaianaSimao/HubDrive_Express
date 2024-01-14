# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    # Constrói um novo recurso (usuário) usando os parâmetros fornecidos
    build_resource(sign_up_params)

    # Salva o recurso no banco de dados
    resource.save

    # Executa um bloco (se fornecido) passando o recurso como argumento
    yield resource if block_given?

    # Verifica se o recurso foi persistido no banco de dados com sucesso
    if resource.persisted?
      # Verifica se o usuário está ativo para autenticação
      if resource.active_for_authentication?
        # Configura a mensagem flash para o caso de registro bem-sucedido
        set_flash_message! :notice, :signed_up

        # Realiza o login do usuário
        sign_up(resource_name, resource)

        # Responde com o recurso, redirecionando para a página após o registro bem-sucedido
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        # Configura a mensagem flash para o caso de registro bem-sucedido, mas o usuário está inativo
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"

        # Expira os dados após o login e responde com o recurso, redirecionando para a página após o login
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      # Limpa os dados de senha e responde com o recurso, indicando que houve um problema no registro
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end
  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  private

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute,
                                      people_attributes: [:name, :last_name, :telephone, :birth_date, :adddress, :cpf]])
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, people_attributes: [:name, :last_name, :telephone, :birth_date, :cpf, :address])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:attribute, people_attributes: [:name, :last_name, :telephone, :birth_date, :address, :cpf]])
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
