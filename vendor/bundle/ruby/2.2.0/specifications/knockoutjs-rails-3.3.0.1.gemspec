# -*- encoding: utf-8 -*-
# stub: knockoutjs-rails 3.3.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "knockoutjs-rails"
  s.version = "3.3.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jacob Swanner"]
  s.date = "2015-05-29"
  s.description = "Knockout is a JavaScript library that helps you to create rich, responsive display and editor user interfaces with a clean underlying data model"
  s.email = ["jacob@jacobswanner.com"]
  s.homepage = "https://github.com/jswanner/knockoutjs-rails"
  s.rubygems_version = "2.4.5"
  s.summary = "The Knockout.js JavaScript library ready for the Rails asset pipeline."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["< 5", ">= 3.1"])
    else
      s.add_dependency(%q<railties>, ["< 5", ">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>, ["< 5", ">= 3.1"])
  end
end
