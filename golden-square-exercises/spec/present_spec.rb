require '2present'

describe Present do
  it "wraps and unwraps a present" do
    my_present = Present.new
    my_present.wrap("toy")
    expect(my_present.unwrap).to eq "toy"
  end
  it "fails if we try to wrap when something is already wrapped" do
    my_present = Present.new
    my_present.wrap("toy")
    expect { my_present.wrap("car") }.to raise_error "A contents has already been wrapped."
    expect(my_present.unwrap).to eq "toy"
  end
  it "fails if we try to unwrap but nothing is wrapped" do
    my_present = Present.new
    expect { my_present.unwrap }.to raise_error "No contents have been wrapped."
  end
end