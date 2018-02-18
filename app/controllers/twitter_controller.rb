# frozen_string_literal: true

class TwitterController < ApplicationController
  def search
    @tweets = TwitterSearchService.new(search_query).search
  end

  private

  def search_query
    @query ||= params[:search_query] || ''
  end
end
