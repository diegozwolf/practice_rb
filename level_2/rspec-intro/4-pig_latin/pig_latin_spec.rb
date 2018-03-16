# # Pig Latin
# Pig latin is a code language used by children. This is one version of those rules.
# Add "ay" to the end of every word.
# If a word begins with a consonant(s), move those(that) consonant(s) to the end of the word, then add the 'ay'

require_relative "pig_latin"

describe "#translate" do

  it "translates a word beginning with a vowel" do
    s = translate("apple")
    expect(s).to eq "appleay"
  end

  it "translates a word beginning with a consonant" do
    s = translate("banana")
    expect(s).to eq "ananabay"
  end

  it "translates a word beginning with two consonants" do
    s = translate("cherry")
    expect(s).to eq "errychay"
  end

  it "translates two words" do
    s = translate("eat pie")
    expect(s).to eq "eatay iepay"
  end

  it "translates a word beginning with three consonants" do
    expect(translate("three")).to eq "eethray"
  end

  it "counts 'sch' as a single phoneme" do
    s = translate("school")
    expect(s).to eq "oolschay"
  end

  it "counts 'qu' as a single phoneme" do
    s = translate("quiet")
    expect(s).to eq "ietquay"
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = translate("square")
    expect(s).to eq "aresquay"
  end

  it "translates many words" do
    s = translate("the quick brown fox")
    expect(s).to eq "ethay ickquay ownbray oxfay"
  end

  # Bonus:
  # * write a test that checks for words staying capitalized at the front (and the code that passes the test)
  # * write a test that checks for punctuations staying in the right place (and code that passes)

end
