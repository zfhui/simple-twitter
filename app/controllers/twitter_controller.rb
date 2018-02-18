class TwitterController < ApplicationController
  def search
    q = params[:q]
    @tweets = q.present? ? TWITTER.search(q, result_type: 'recent').take(5) : []
  end
end
