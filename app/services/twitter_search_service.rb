# frozen_string_literal: true

class TwitterSearchService
  attr_reader :q, :options

  def initialize(query = '')
    @q, @options = convert_to_query_and_options(query)
  end

  # For a detailed explanation of TWITTER.search(q, options),
  # see: http://www.rubydoc.info/gems/twitter/Twitter/REST/Search
  def search
    q.present? ? TWITTER.search(q, options) : []
  end

  private

  def convert_to_query_and_options(query)
    query_hash = Rack::Utils.parse_query(query)
    return query_hash.delete('q'), query_hash
  end
end
