require 'open-uri'

class PackagesFetcher
  def self.fetch(name)
    fetcher = new(name)
    fetcher.dependencies
  end

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def dependencies
    dependencies = []
    response = fetch(name)
    deps = response['dependencies'].keys

    deps.each { |dep| dependencies << fetch(dep)["dependencies"]&.keys }
    dependencies << deps
    
    dependencies.flatten.compact
  end

  private
    def fetch(name)
      url = "http://registry.npmjs.org/#{name}/latest"
      JSON.parse URI(url).read
    end
end
