describe 'All' do
  it { expect([1,3,5]).to all((be_odd).and be_an(Integer)) } # Expero que todos os elementos do array sejam impares e inteiros
  it { expect(['ruby', 'rails']).to all( be_a(String).and include('r') )} # Esperado que todos os elementos do array sejam do tipo string e incluem a letra r 
end