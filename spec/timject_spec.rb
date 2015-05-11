require 'Enumberable'

  describe 'timject' do

    it 'deals where the initial value is zero (U1)' do
      expect([1,2,3].timject(0) {|result, element| result + element}).to eq 6
    end

    it 'deals with where the initial value is missing (U2)' do
      expect([1,2,3].timject() {|result, element| result + element}).to eq 6
    end

    it 'deals with where the initial value is  > 0 (U3)' do
      expect([1,2,3].timject(6) {|result, element| result + element}).to eq 12
    end

    it 'deals with an array where values are strings (U4)' do
      expect(%w{cat dog sheep}.timject() {|memo,word| memo.length > word.length ? memo : word}).to eq "sheep"
    end



end