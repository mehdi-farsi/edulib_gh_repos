# frozen_string_literal

require 'rails_helper'

describe Repository do
  let(:repository) { build(:repository) }

  it "has a valid factory" do
    expect(repository).to be_valid
  end

  describe "scopes" do
    let(:repositories_names) { %w[111 aaa zzz] }

    it ".alphanum returns all the repositories alphanumerically ordered" do
      repository_z = create(:repository, name: 'zzz')
      repository_1 = create(:repository, name: '111')
      repository_a = create(:repository, name: 'aaa')

      expect(Repository.alphanum.map(&:name)).to eq(repositories_names)
    end
  end

  # describe "public instance methods" do
  #   context "responds to its methods" do
  #     it { expect(factory_instance).to respond_to(:public_method_name) }
  #     it { expect(factory_instance).to respond_to(:public_method_name) }
  #   end

  #   context "executes methods correctly" do
  #     context "#method name" do
  #       it "does what it's supposed to..."
  #         expect(factory_instance.method_to_test).to eq(value_you_expect)
  #       end

  #       it "does what it's supposed to..."
  #         expect(factory_instance.method_to_test).to eq(value_you_expect)
  #       end
  #     end
  #   end
  # end

  # describe "public class methods" do
  #   context "responds to its methods" do
  #     it { expect(factory_instance).to respond_to(:public_method_name) }
  #     it { expect(factory_instance).to respond_to(:public_method_name) }
  #   end

  #   context "executes methods correctly" do
  #     context "self.method name" do
  #       it "does what it's supposed to..."
  #         expect(factory_instance.method_to_test).to eq(value_you_expect)
  #       end
  #     end
  #   end
  # end

end
