class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def change_owner(owner)
    @owner = owner
    mail to: @owner.email, subject: I18n.t('views.messages.owner_assign')
  end
end
