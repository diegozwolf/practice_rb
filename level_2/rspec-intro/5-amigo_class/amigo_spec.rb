require_relative "amigo"

describe Amigo do
  it "says hello" do
    expect(Amigo.new.greeting).to eq "Hola!"
  end

  it "says hello to someone" do
    expect(Amigo.new.greeting("Shakira")).to eq "Hello, Shakira!"
  end
end
