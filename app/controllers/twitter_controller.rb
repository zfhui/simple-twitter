class TwitterController < ApplicationController
  def search
    q = params[:q]
    @tweets = TWITTER.search(q, result_type: 'recent')
  end
end
