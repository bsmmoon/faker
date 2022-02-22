require "rails_helper"

describe FetchCatalogueService do
  describe "#call" do
    subject { described_class.call }
    it { is_expected.to eq 1 }
  end
end
