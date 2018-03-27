class PackagesFetcher
  def self.fetch(name)
    fetcher = new(name)
    fetcher.fetch
  end

  def initialize(name)
    @name = name
  end

  def fetch
    ["cliff"]
  end
end
