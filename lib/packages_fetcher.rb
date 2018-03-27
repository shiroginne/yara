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
    response = fetch
    response['dependencies'].keys
  end

  private
    def fetch
      url = "http://registry.npmjs.org/#{name}/latest"
      JSON.parse URI(url).read
    end
end
