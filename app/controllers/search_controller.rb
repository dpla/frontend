class SearchController < ApplicationController
  helper_method :permitted_params
  before_filter :save_location

  def show
    @search = Search.new *permitted_params.search
    @items = @search.result permitted_params.args
  end

  private

    def permitted_params
      @permitted_params ||= PermittedParams.new(params)
    end

    def save_location
      session[:user_return_to] = request.fullpath unless current_user
    end
end
