require 'rails_helper'

RSpec.describe PackagesFetcher do
  describe '.fetch' do
    subject { described_class }

    it 'fetches npm packages' do
      dependencies = subject.fetch("forever")

      expect(dependencies).to include("cliff")
    end

    it 'fetches dependencies of dependencies' do
      sub_dependencies = subject.fetch("forever")

      expect(sub_dependencies).to include("eyes")
    end
  end
end
