require "rspec"
require_relative "../words_from_string"

RSpec.describe 'words_from_string' do
  it 'returns an empty array when the string is empty' do
    expect(words_from_string("")).to eq([])
    expect(words_from_string("    ")).to eq([])
  end

  it "returns a single element with single word string" do
    expect(words_from_string("hello")).to eq(["hello"])
    expect(words_from_string("    hello")).to eq(["hello"])
    expect(words_from_string("hello    ")).to eq(["hello"])
    expect(words_from_string("    hello    ")).to eq(["hello"])
  end

  it "returns multi-elements with multi-word string" do
    expect(words_from_string("hello world")).to eq(["hello", "world"])
    expect(words_from_string("hello world    ")).to eq(["hello", "world"])
    expect(words_from_string("    hello world")).to eq(["hello", "world"])
    expect(words_from_string("    hello world    ")).to eq(["hello", "world"])
  end

  it "ignores punctuation" do
    expect(words_from_string("<the!> cat's, -mat-")).to eq(["the", "cat's", "mat"])
  end
end