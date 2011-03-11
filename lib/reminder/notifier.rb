
module Reminder
  class Notifier
    
    def initialize options, output = STDOUT
      @message   = options[:message]
      @title     = options[:title]
      @time      = options[:time]
    end
    
    def run 
      raise GrowlNotInstalled and return unless Growl.installed?
      notification = Growl.new
      notification.message = @message
      notification.title = @title
      notification.icon = nil
      
      while true
        notification.run
        sleep(@time * 60)
      end
            
    end
    
  end
end