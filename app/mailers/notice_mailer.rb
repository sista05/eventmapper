class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_map.subject
  #
  def sendmail_map
    @map = map
    
    @greeting = "Hi"

    mail to: "sista05@y4.dion.ne.jp",
    subject: 'イベントが追加されました'
  end
end
