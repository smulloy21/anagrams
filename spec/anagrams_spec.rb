require('rspec')
require('anagrams')

describe('String#anagrams?') do
  it("checks if any arguments are and anagram of the string") do
    expect("fox".anagrams?("xfo, dog")).to(eq("The string xfo is an anagram of fox."))
  end
  it("tells if no anagrams are found") do
    expect("fox".anagrams?("tree, dog")).to(eq("No anagrams found."))
  end
  it("includes an 'and' if there are multiple anagrams") do
    expect("fox".anagrams?("tree, xfo, ofx, oxf")).to(eq("The strings xfo, ofx, and oxf are anagrams of fox."))
  end
end
