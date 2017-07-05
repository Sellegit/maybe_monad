require 'spec_helper'

describe MaybeMonad::Monad do

  before do
  end

  describe "test soup is nil" do
    it 'must return ""' do
      expect(nil.maybe.to_s.just).to eq "" 
    end
  end

  describe "test actual soup call undef method" do
    it "must return nil" do
      expect("a".maybe.aaa.just).to eq nil
    end
  end

  describe "test actual soup" do
    it "must return 2" do
      expect(2.maybe.to_s.just).to eq "2"
    end
  end

  describe "test method with parameters" do
    it "must return false" do
      expect("a".maybe.respond_to?("aaa").to_s.just).to eq "false"
    end
  end

  describe "test method #[]" do
    it "must return 2" do
      expect([1, 2, 3].maybe[1].to_s.just).to eq "2"
    end

    it "must return nil" do
      expect([1, 2, 3].maybe[4].to_s.just).to eq "" 
    end
  end

  describe "test block" do
    it "must return 2" do
      expect(([1].maybe.map { |x| x + 1 })[0].just).to eq 2
    end
  end
end

