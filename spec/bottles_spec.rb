require_relative '../lib/bottles.rb'

describe Bottles do
  describe "#verse" do
    context "1" do
      expected = <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.
      VERSE
      it "is expected to return #{expected} if given 1" do
        expect(subject.verse(1)).to eq (expected)
      end
    end
    context "99" do
      expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
      VERSE
      it "is expected to return #{expected} if given 99" do
        expect(Bottles.new.verse(99)).to eq (expected)
      end
    end
  end
end
