# -*- encoding: utf-8 -*-
# stub: hitimes 1.2.2 ruby lib
# stub: ext/hitimes/c/extconf.rb

Gem::Specification.new do |s|
  s.name = "hitimes".freeze
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jeremy Hinegardner".freeze]
  s.date = "2014-07-09"
  s.description = "Hitimes is a fast, high resolution timer library for recording performance metrics.  It uses the appropriate low method calls for each system to get the highest granularity time increments possible.   It currently supports any of the following systems: * any system with the POSIX call `clock_gettime()` * Mac OS X * Windows * JRuby Using Hitimes can be faster than using a series of `Time.new` calls, and it will have a much higher granularity. It is definitely faster than using `Process.times`.".freeze
  s.email = "jeremy@copiousfreetime.org".freeze
  s.extensions = ["ext/hitimes/c/extconf.rb".freeze]
  s.extra_rdoc_files = ["CONTRIBUTING.md".freeze, "HISTORY.md".freeze, "Manifest.txt".freeze, "README.md".freeze]
  s.files = ["CONTRIBUTING.md".freeze, "HISTORY.md".freeze, "Manifest.txt".freeze, "README.md".freeze, "ext/hitimes/c/extconf.rb".freeze]
  s.homepage = "http://github.com/copiousfreetime/hitimes".freeze
  s.licenses = ["ISC".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze, "--markup".freeze, "tomdoc".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Hitimes is a fast, high resolution timer library for recording performance metrics.  It uses the appropriate low method calls for each system to get the highest granularity time increments possible.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.3"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 4.1"])
      s.add_development_dependency(%q<json>.freeze, ["~> 1.7.7"])
      s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.3"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 4.1"])
      s.add_dependency(%q<json>.freeze, ["~> 1.7.7"])
      s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.3"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 4.1"])
    s.add_dependency(%q<json>.freeze, ["~> 1.7.7"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
  end
end
