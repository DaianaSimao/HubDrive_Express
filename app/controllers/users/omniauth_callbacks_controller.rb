class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in(@user, bypass: true)
      @user.create_people unless @user.people

      if @user.people.additional_fields_required?
        session["devise.user_id"] = @user.id
        redirect_to edit_user_registration_url, notice: "Complete seu cadastro com informações adicionais."
      else
        sign_in_and_redirect @user, event: :authentication
        set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
      end
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"].except(:extra)
      redirect_to new_user_registration_url
    end
  end

  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in(@user, bypass: true)
      @user.create_people unless @user.people

      if @user.people.additional_fields_required?
        session["devise.user_id"] = @user.id
        redirect_to edit_user_registration_url, notice: "Complete seu cadastro com informações adicionais."
      else
        sign_in_and_redirect @user, event: :authentication
        set_flash_message(:notice, :success, kind: "GitHub") if is_navigational_format?
      end
    else
      session["devise.github_data"] = request.env["omniauth.auth"].except(:extra)
      redirect_to new_user_registration_url
    end
  end

  def google_oauth2
    @user = User.from_omniauth(request.env['omniauth.auth'])

    if @user.persisted?
      sign_in(@user, bypass: true)
      @user.create_people unless @user.people

      if @user.people.additional_fields_required?
        session["devise.user_id"] = @user.id
        redirect_to edit_user_registration_url, notice: "Complete seu cadastro com informações adicionais."
      else
        sign_in_and_redirect @user, event: :authentication
        set_flash_message(:notice, :success, kind: "Google") if is_navigational_format?
      end
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra)
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path, alert: "Falha na autenticação. Por favor, tente novamente."
  end
end
