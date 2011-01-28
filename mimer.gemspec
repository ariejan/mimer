# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mimer}
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ariejan de Vroom"]
  s.date = %q{2010-02-11}
  s.description = %q{Find the mime-type of a file using unix' `file` command. This does not look at file extension, ever.}
  s.email = %q{ariejan@ariejan.net}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/mimer.rb",
     "mimer.gemspec",
     "spec/fixtures/facepalm.jpg",
     "spec/fixtures/google.gif",
     "spec/fixtures/kirk.png",
     "spec/fixtures/plain.txt",
     "spec/mimer_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/ariejan/mimer}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{mimer}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Find the mime-type of a file using unix' `file` command.}
  s.test_files = [
    "spec/mimer_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

