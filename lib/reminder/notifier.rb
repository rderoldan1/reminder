
module Reminder
  class Notifier
    
    def initialize options, output = STDOUT
      @message   = options[:message]
      @title     = options[:title]
      @time      = options[:time]
      raise NoMessageException and return if @message.nil?
    end
    
    def run 
      raise GrowlNotInstalled and return unless Growl.installed?
      notification = Growl.new
      
      notification.icon = nil
      notification.title = @title
      notification.message = @message
      
      while true
        notification.run
        sleep(@time * 60)
      end
            
    end
    
  end
end