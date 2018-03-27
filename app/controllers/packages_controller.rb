class PackagesController < ApplicationController
  def dependencies
    dependencies = PackagesFetcher.fetch(params[:id])
    render json: dependencies.as_json
  end
end
