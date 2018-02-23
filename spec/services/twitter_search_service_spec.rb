require 'rails_helper'

describe TwitterSearchService, :vcr do
  subject(:service) { TwitterSearchService.new(query) }

  describe '#search' do
    context 'query is empty' do
      let(:query) { '' }

      it { expect(service.search).to be_empty }
    end

    context 'query does not contain param q' do
      let(:query) { '#ruby25th' }

      it { expect(service.search).to be_empty }
    end

    context 'query only contains param q' do
      let(:query) { 'q=#ruby25th' }

      it { expect(service.search).to be_a(Twitter::SearchResults) }
    end

    context 'complex query' do
      let(:query) { 'q=#ruby25th&lang=en&count=5&result_type=recent' }

      it { expect(service.search).to all(be_a(Twitter::Tweet)) }
      it { expect(service.search.count).to eq 5 }
    end
  end
end
