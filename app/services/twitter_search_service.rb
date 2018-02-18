# frozen_string_literal: true

class TwitterSearchService
  attr_reader :query

  def initialize(query = {})
    @query = query
  end

  def search
    query.present? ? TWITTER.search(query) : []
  end
end
