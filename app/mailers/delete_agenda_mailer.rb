class DeleteAgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def delete_agenda_mail(agenda)
    @agenda = agenda
    mail to: @agenda.team.members.map(&:email).join(","), subject: "アジェンダ削除のお知らせ"
  end
end
