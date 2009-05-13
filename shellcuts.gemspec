# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{shellcuts}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonas Grimfelt"]
  s.date = %q{2009-05-13}
  s.default_executable = %q{define}
  s.description = %q{Convenient shortcuts directly within the shell.}
  s.email = %q{grimen@gmail.com}
  s.executables = ["define"]
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    "MIT-LICENSE",
    "README.textile",
    "Rakefile",
    "bin/define",
    "lib/shellcuts/google.rb"
  ]
  s.homepage = %q{http://github.com/grimen/shellcuts/tree/master}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Convenient shortcuts directly within the shell.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
