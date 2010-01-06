require File.dirname(__FILE__) + '/support/setup'

class UpdateAccess < CloudCrowd::Action

  def process
    ActiveRecord::Base.establish_connection
    document = Document.find(input)
    document.set_access(document.access)
  end

end