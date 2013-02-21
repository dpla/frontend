require_dependency 'dpla/search'

class TimelineController < ApplicationController
  def index
    @search = Timeline.new permitted_params.term, permitted_params.filters
  end

  def items_by_year
    @search = Timeline.new permitted_params.term, permitted_params.filters
    page = params[:page].to_i if params[:page]
    @year = params[:year] ? params[:year].to_i : Time.now.year
    @items = @search.items(@year, page || 0)
    unless params[:page]
      render partial: "timeline/items", locals: { items: @items }, layout: false
    else
      render partial: 'timeline/item', collection: @items, as: :item, layout: false
    end
  end

  private

    def permitted_params
      @permitted_params ||= PermittedParams.new(params)
    end

end