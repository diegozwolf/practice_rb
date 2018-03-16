require_relative "hello"

describe "the hello function" do 
  it "says hello" do
    expect(hello).to eq "Hello!"
  end
end

describe "the greet function" do
  it "says hello to someone" do
    expect(greet("Nico")).to eq "Hello, Nico!"
  end

  it "says hello to someone else" do
    expect(greet("Granger")).to eq "Hello, Granger!"
  end
end
