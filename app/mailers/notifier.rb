class Notifier < ActionMailer::Base
  default from: "notifications@zachary-smith.com"

  def new_contact(contact_entry)
  	@contact_entry = contact_entry
  	mail :to => 'zrsmith92@gmail.com'
  end
end
