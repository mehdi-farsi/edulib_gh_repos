# frozen_string_literal

require 'rails_helper'
require 'active_repository'

describe "ActiveRepository.config" do
  let(:organization) { 'rails' }
  let(:adapter) { :github }

  context "set in initializer" do
    before do
      ActiveRepository.configure do |config|
        config.organization = organization
      end
    end

    it "shoud contain the set organization and adapter from the initializer" do
      expect(ActiveRepository.config.organization).to eq(organization)
      expect(ActiveRepository.config.adapter).to eq(adapter)
    end
  end
end
