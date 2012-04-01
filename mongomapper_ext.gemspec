# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongomapper_ext}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David A. Cuadrado"]
  s.date = %q{2010-09-28}
  s.description = %q{MongoMapper extensions}
  s.email = %q{krawek@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc",
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "examples/filter.rb",
     "examples/helper.rb",
     "examples/i18n.rb",
     "examples/slugizer.rb",
     "examples/storage.rb",
     "examples/tags.rb",
     "examples/types.rb",
     "examples/update.rb",
     "lib/mongomapper_ext.rb",
     "lib/mongomapper_ext/file.rb",
     "lib/mongomapper_ext/file_list.rb",
     "lib/mongomapper_ext/file_server.rb",
     "lib/mongomapper_ext/filter.rb",
     "lib/mongomapper_ext/js/filter.js",
     "lib/mongomapper_ext/js/find_tags.js",
     "lib/mongomapper_ext/js/tag_cloud.js",
     "lib/mongomapper_ext/paginator.rb",
     "lib/mongomapper_ext/slugizer.rb",   
     "lib/mongomapper_ext/markdown.rb",
     "lib/mongomapper_ext/storage.rb",
     "lib/mongomapper_ext/tags.rb",
     "lib/mongomapper_ext/types/open_struct.rb",
     "lib/mongomapper_ext/types/timestamp.rb",  
     "lib/mongomapper_ext/types/text.rb",
     "lib/mongomapper_ext/types/translation.rb",
     "lib/mongomapper_ext/update.rb",
     "mongomapper_ext.gemspec",
     "test/helper.rb",
     "test/models.rb",
     "test/support/custom_matchers.rb",
     "test/test_filter.rb",
     "test/test_slugizer.rb",
     "test/test_storage.rb",
     "test/test_tags.rb",
     "test/test_update.rb",
     "test/types/test_open_struct.rb",
     "test/types/test_set.rb",
     "test/types/test_timestamp.rb"
  ]
  s.homepage = %q{http://github.com/dcu/mongomapper_ext}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{MongoMapper extensions}
  s.test_files = [
    "test/test_slugizer.rb",
     "test/test_filter.rb",
     "test/test_tags.rb",
     "test/test_storage.rb",
     "test/test_update.rb",
     "test/support/custom_matchers.rb",
     "test/models.rb",
     "test/helper.rb",
     "test/types/test_open_struct.rb",
     "test/types/test_timestamp.rb",
     "test/types/test_set.rb",
     "examples/types.rb",
     "examples/filter.rb",
     "examples/update.rb",
     "examples/tags.rb",
     "examples/storage.rb",
     "examples/helper.rb",
     "examples/i18n.rb",
     "examples/slugizer.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongo_mapper>, ["~> 0.8"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 2.0.0"])
      s.add_development_dependency(%q<shoulda>, [">= 2.10.2"])
      s.add_development_dependency(%q<jnunemaker-matchy>, ["= 0.4.0"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.4"])
    else
      s.add_dependency(%q<mongo_mapper>, ["~> 0.8"])
      s.add_dependency(%q<uuidtools>, [">= 2.0.0"])
      s.add_dependency(%q<shoulda>, [">= 2.10.2"])
      s.add_dependency(%q<jnunemaker-matchy>, ["= 0.4.0"])
      s.add_dependency(%q<mocha>, [">= 0.9.4"])
    end
  else
    s.add_dependency(%q<mongo_mapper>, ["~> 0.8"])
    s.add_dependency(%q<uuidtools>, [">= 2.0.0"])
    s.add_dependency(%q<shoulda>, [">= 2.10.2"])
    s.add_dependency(%q<jnunemaker-matchy>, ["= 0.4.0"])
    s.add_dependency(%q<mocha>, [">= 0.9.4"])
  end
end

