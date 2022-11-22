require "present"

RSpec.describe Present do
  it "wraps and unwraps a value" do
    present = Present.new
    present.wrap("toy")
    expect(present.unwrap).to eq "toy"
  end

  it "fails if we unwrap without wrapping first" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end

  it "if fails if we wrapped and we wrap again" do
    present = Present.new
    present.wrap("toy")
    expect { present.wrap("toy") }.to raise_error "A contents has already been wrapped."
  end
end
