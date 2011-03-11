require 'spec_helper'

module Reminder
  describe Notifier do
    let(:output) {double('output').as_null_object}
    context "Growl is not installed" do
      it "raises an exception" do
        Growl.stub!(:installed?).and_return(false)
        expect{
          Notifier.new(default_options, output).run
        }.to raise_error(
          Reminder::GrowlNotInstalled, /Growl is not installed/
        )
      end
    end
  
    context "Growl is happily installed" do
      
      it "should show notifications instantly" do
        notifier = Notifier.new(default_options, output)
        notifier.run
      end
    end
  
  end
end