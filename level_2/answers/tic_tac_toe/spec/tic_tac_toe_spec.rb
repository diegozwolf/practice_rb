require_relative '../tic_tac_toe'

describe Board do
    let(:board) {Board.new}

    describe "::new" do
        it "should not raise an error" do
            expect{board}.not_to raise_error
        end
    end

    describe "fields" do
        it "should return an array" do
            expect(board.show_board.class).to eq Array
        end

        it "should return a size 3" do
           expect(board.show_board.length).to eq 3 
        end
    end

end