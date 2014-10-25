require './lib/hanoi'
require 'minitest/autorun'

describe Hanoi do
 before(:each) do
    @hanoi = Hanoi.new
 end

 it "has only disc on rod A after start" do
    @hanoi.rod(:a).wont_be_empty
    @hanoi.rod(:b).must_be_empty
    @hanoi.rod(:c).must_be_empty
 end

 it "should move disc to empty rod" do
    @hanoi.move(:a, :c)
    @hanoi.rod(:c).wont_be_empty
 end

 it "should not move to a smaller disc" do
    @hanoi.move(:a, :c)
    lambda{@hanoi.move(:a, :c)}.must_raise(Exception)
 end

 it "should not move from empty" do
    lambda{@hanoi.move(:b, :c)}.must_raise(Exception)
 end
end
