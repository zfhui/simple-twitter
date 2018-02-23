# frozen_string_literal: true

class TwitterSearchService
  attr_reader :q, :count, :options

  def initialize(query = '')
    @q, @count, @options = convert_to_query_and_options(query)
  end

  # For a detailed explanation of TWITTER.search(q, options),
  # see: http://www.rubydoc.info/gems/twitter/Twitter/REST/Search
  def search
    result = q.present? ? TWITTER.search(q, options) : []
    result = result.take(count.to_i) if result.present? && count.present?
    result
  end

  private

  def convert_to_query_and_options(query)
    query_hash = Rack::Utils.parse_query(query)
    return query_hash.delete('q'), query_hash.delete('count'), query_hash
  end
end
