# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rt_capistrano}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrew Porter"]
  s.date = %q{2009-02-25}
  s.description = %q{Use native capistrano tasks with Media Temple (gs) accounts.}
  s.email = %q{partydrone@me.com}
  s.extra_rdoc_files = ["lib/rt_capistrano.rb", "README.rdoc"]
  s.files = ["init.rb", "lib/rt_capistrano.rb", "MIT-LICENSE", "Rakefile", "README.rdoc", "Manifest", "rt_capistrano.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/partydrone/rt_capistrano}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Rt_capistrano", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rt_capistrano}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Use native capistrano tasks with Media Temple (gs) accounts.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
