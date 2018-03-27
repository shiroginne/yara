require 'rails_helper'

RSpec.describe PackagesFetcher do
  describe '.fetch' do
    subject { described_class }

    it 'fetchers npm packages' do
      dependencies = subject.fetch("forever")

      expect(dependencies).to include("cliff")
    end
  end
end
