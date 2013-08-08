# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

$: << './lib'
require 'has_serialized/version'

Gem::Specification.new do |s|
  s.name = %q{has_serialized}
  s.version = HasSerialized::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ramon Tayag"]
  s.date = %q{2011-11-04}
  s.description = %q{Adds dynamic attributes through serialize. This way, it's in one table, and it's still trivial to track changes to your records.}
  s.email = %q{ramon@tayag.net}
  s.extra_rdoc_files = %w(README.md)
  s.license = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.homepage = %q{http://github.com/ramontayag/has_serialized}
  s.licenses = ["MIT"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Adds dynamic attributes through serialize.}

  s.add_runtime_dependency 'activerecord', '~> 3.0'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'appraisal'
end

