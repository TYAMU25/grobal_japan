class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail to: @contact.email # ENV['TOMAIL'], subject: '【お問い合わせ】' #+ @contact.subject
  end
end
