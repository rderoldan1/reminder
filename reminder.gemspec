# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "reminder/version"

Gem::Specification.new do |s|
  s.name        = "reminder"
  s.version     = Reminder::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nicolás Hock Isaza"]
  s.email       = ["nhocki@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Simple Growl reminders. Just work, set a timer, and get reminded!}
  s.description = %q{This gem will allow you to create simple, repeating reminders with growl}

  s.rubyforge_project = "reminder"

  s.add_dependency('growl')
  s.add_dependency('choice')
  s.add_development_dependency('rspec')
  s.add_development_dependency('pamela')


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
