require "./bubble"

RSpec.describe BubbleSort do
  describe "the class method 'sort'" do
    subject { described_class.sort(sequence) }

    context "sequence is already sorted" do
      let(:sequence) { [0, 1, 2, 3, 4, 5] }

      it "returns the same sequence" do
        expect(subject).to eq [0, 1, 2, 3, 4, 5]
      end
    end

    context "sequence isn't sorted" do
      let(:sequence) { [1, 2, 3, 4, 5, 0] }

      it "returns a sorted sequence with the same elements" do
        expect(subject).to eq [0, 1, 2, 3, 4, 5]
      end
    end
  end
end
