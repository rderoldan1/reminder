module Reminder
  class Notifier
    def self.run options
      raise GrowlNotInstalled and return unless Growl.installed?
    end
    
  end
end