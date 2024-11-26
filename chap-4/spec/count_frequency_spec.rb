require "rspec"
require_relative "../count_frequency"

RSpec.describe 'count_frequency' do
  it 'returns an empty hash when the list is empty' do
    result = count_frequency([])
    expect(result).to eq({})
  end

  it "returns a hash with one entry" do
    expect(count_frequency(["hello"])).to eq({"hello" => 1})
  end

  it "returns a hash with multiple entries" do
    expect(count_frequency(["hello", "world"])).to eq({"hello" => 1, "world" => 1})
  end

  it "two words with non adjacent repeat" do
    expect(count_frequency(["cat", "sat", "cat"])).to eq({"cat" => 2, "sat" => 1})
  end
end