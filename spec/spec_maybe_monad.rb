require 'minitest/autorun'
require 'maybe_monad'

describe MaybeMonad::Monad do

  before do
  end

  # default, nil don't respond to any method
  describe "test soup is nil" do
    it "must return nil" do
      nil.maybe.to_s.just.must_equal nil 
    end
  end

  ## extra, nil respond to methods that can respond
  #describe "test soup is nil" do
    #it 'must return ""' do
      #nil.maybe.to_s.just.must_equal "" 
    #end
  #end

  ## extra, just return nil if actual soup call undef method
  #describe "test actual soup call undef method" do
    #it "must return nil" do
      #"a".maybe.aaa.just.must_equal nil
    #end
  #end

  describe "test actual soup" do
    it "must return 2" do
      2.maybe.to_s.just.must_equal "2"
    end
  end

  describe "test method with parameters" do
    it "must return false" do
      "a".maybe.respond_to?("aaa").to_s.just.must_equal "false"
    end
  end

  describe "test method #[]" do
    it "must return 2" do
      [1, 2, 3].maybe[1].to_s.just.must_equal "2"
    end
  end

end

