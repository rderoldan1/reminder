require 'spec_helper'

module Reminder
  describe Notifier do
    context "Growl is not installed" do
      it "raises an exception" do
        Growl.stub!(:installed?).and_return(false)
        expect{
          Notifier.run(default_options)
        }.to raise_error(
          Reminder::GrowlNotInstalled, /Growl is not installed/
        )
      end
    end
  
    context "Growl is happily installed" do
      
    end
  
  end
end