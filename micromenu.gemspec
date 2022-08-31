# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'micromenu'
  s.version = '0.0.2'
  s.date = '2022-05-14'
  s.summary = 'A cute little menu system written in Ruby 🥰'
  s.description = 'A cute little menu system written in Ruby. ' \
    'Run this in any directory to show a file listing with just sub-directories and executable files. ' \
    'Navigation can be quickened by providing your selection as command line arguments.'
  s.homepage = 'https://github.com/tristanpenman/micromenu'
  s.license = 'MIT'
  s.authors = ['Tristan Penman']
  s.email = 'tristan@tristanpenman.com'
  s.required_ruby_version = '>= 2.5'

  s.files = ['bin/um']
  s.executables = ['um']

  s.add_dependency 'tty-prompt', '~> 0.23.1'
  s.add_development_dependency 'rubocop', '~> 1.28.2'
end
