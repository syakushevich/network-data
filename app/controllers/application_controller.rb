class ApplicationController < ActionController::API
  def index
    render json: NetworkMonitor.call
  end
end
