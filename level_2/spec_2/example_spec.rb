require './example'

describe 'randomize' do
    it 'should return a string' do
        expect(randomize('name').class).to eq String
    end
    
    it 'should change the word' do
        expect(randomize('name')).not_to eq 'name'
    end
    
    it 'should change the word' do
        expect(randomize('pizza')).not_to eq 'pizza'
    end
    
    it 'should return the same length' do
        expect(randomize('pizza').length).to eq 5
    end
    
    it 'should contain the same letters' do
        sorted_letters = randomize('pizza').chars.sort
        expect(sorted_letters).to eq 'pizza'.chars.sort 
    end
end