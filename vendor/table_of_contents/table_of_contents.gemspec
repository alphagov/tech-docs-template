Gem::Specification.new do |s|
  s.name        = 'table_of_contents'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "Build a table of contents from markdown"
  s.description = s.summary
  s.authors     = ["Henry Turner"]
  s.files       = ['lib/table_of_contents.rb']

  s.add_dependency 'nokogiri'
  s.add_development_dependency 'rspec'
end
