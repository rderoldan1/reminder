module Reminder
  class Error < StandardError ; end


  # This exception will be raised if Growl is not installed
  # You'll need to install Growl to use this gem
  class GrowlNotInstalled < Error
    attr_writer :default_message
    def initialize(message = nil)
      @message = message
      @default_message = "Growl is not installed. Download it at http://growl.info"
    end
    def to_s
      @message || @default_message
    end
  end

  
end