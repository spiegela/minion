# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "minion/version"

Gem::Specification.new do |s|
  s.name = %q{minion}
  s.version = Minion::VERSION
  s.platform = Gem::Platform::RUBY

  s.required_rubygems_version = Gem::Requirement.new("> 0.0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Orion Henry", "Aaron Spiegel"]
  s.date = %q{2010-07-28}
  s.description = %q{Ruby jobs with AMQP}
  s.email = %q{ruby-minion@googlegroups.com}
  s.homepage = %q{http://github.com/ruby-minion/minion}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{minion}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Super simple job queue over AMQP}

  s.files = Dir.glob("lib/**/*") + %w(Rakefile)
  s.test_files = Dir.glob("spec/**/*") + Dir.glob("examples/*")

  s.add_runtime_dependency("amqp", ["~> 0.7.4"])
  s.add_runtime_dependency("bunny", ["~> 0.7.4"])
  s.add_runtime_dependency("json", [">= 1.2.0"])

  s.add_development_dependency("mocha", ["= 0.9.8"])
  s.add_development_dependency("rspec", ["~> 2.4"])
end
