require 'rails_helper'

describe TwitterSearchService, :vcr do
  subject(:service) { TwitterSearchService.new(query) }

  describe '#search' do
    context 'query is empty' do
      let(:query) { '' }

      it { expect(service.search).to be_empty }
    end

    context 'query does not contain param q' do
      let(:query) { '#adjust' }

      it { expect(service.search).to be_empty }
    end

    context 'query only contains param q' do
      let(:query) { 'q=adjust' }

      it { expect(service.search).to be_a(Twitter::SearchResults) }
    end

    context 'complex query' do
      let(:query) { 'q=adjust&lang=en&count=5&result_type=recent' }

      it { expect(service.search).to be_a(Twitter::SearchResults) }
    end
  end
end
