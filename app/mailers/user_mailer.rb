class UserMailer < ActionMailer::Base

  def reset_password_instructions(record, token, opts = {})
    @token = token
    @resource = record
    mail(to: record.email, subject: 'Instruções para Redefinir a Senha', **opts)
  end
end
