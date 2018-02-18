class TwitterController < ApplicationController
  before_action :search_query

  def search
    @tweets = @q.present? ? TWITTER.search(@q, result_type: 'recent') : []
  end

  private

  def search_query
    @q ||= params[:q] || ''
  end
end
