require_relative '../tic_tac_toe'

describe Board do
    let(:board) {Board.new}

    describe "::new" do
        it "should not raise an error" do
            expect{board}.not_to raise_error
        end
    end
end