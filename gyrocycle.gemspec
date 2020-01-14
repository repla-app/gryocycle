# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "gyrocycle"
  spec.version       = "0.0.4"
  spec.authors       = ["Roben Kleene"]
  spec.email         = ["contact@repla.app"]

  spec.summary       = "Repla blog theme."
  spec.homepage      = "https://github.com/repla-app/gyrocycle"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|vendor|_layouts|_includes|_sass|LICENSE|README)!i) }

  base_path = File.expand_path(File.dirname(__FILE__)) + "/"
  `git submodule --quiet foreach pwd`.split($\).each do |submodule_path|
    Dir.chdir(submodule_path) do
      submodule_relative_path = submodule_path.sub base_path, ""
      `git ls-files -z`.split("\x0").each do |filename|
        spec.files << "#{submodule_relative_path}/#{filename}"
      end
    end
  end

  spec.add_runtime_dependency "jekyll", "~> 3.7"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_development_dependency "bundler", "~> 2.0.1"
end
