# frozen_string_literal: true

class TwitterController < ApplicationController
  before_action :search_query

  def search
    @tweets = TwitterSearchService.new(search_query).search
  end

  private

  def search_query
    @query ||= params[:search_query] || ''
  end
end
