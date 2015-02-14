Gem::Specification.new do |gem|
  gem.name          = "embulk-plugin-filter-convert"
  gem.version       = "0.0.1"

  gem.summary       = %q{Embulk Fileter Plugin Convert}
  gem.description   = gem.summary
  gem.authors       = ["Tadaichiro Nakano"]
  gem.email         = ["nakanotadaichiro@outlook.jp"]
  gem.homepage      = "https://github.com/tadaichiro/embulk-plugin-filter-convert"
  gem.license       = "MIT"

  gem.files         = [ "lib/embulk/filter_convert.rb",  "README.md" ]

  gem.add_development_dependency "bundler", "~> 1.8"
  # spec.add_development_dependency "rake", "~> 10.0"
  # spec.add_development_dependency "rspec"
end
