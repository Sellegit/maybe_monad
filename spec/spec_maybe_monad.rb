require 'minitest/autorun'
require 'maybe_monad'

describe MaybeMonad::Monad do

  before do
  end

  describe "test nil soup" do
    it "must return nil" do
      nil.maybe.just.must_equal nil
    end
  end

  describe "test actual soup" do
    it "must return actual soup" do
      [1, 2, 3].maybe[1].to_s.just.must_equal "2"
    end
  end

end

