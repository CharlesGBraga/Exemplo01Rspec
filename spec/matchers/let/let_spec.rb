$counter = 0
describe 'let' do
  let(:count) { $counter += 1 } # invocado a cada teste

  it 'Memoriza valor' do
    expect(count).to eq(1) # invocado o let a primeira vez
    expect(count).to eq(1) # let cache
  end

  it 'Não cacheado entre os testes' do
    expect(count).to eq(2) # Invoca o let novamente
  end
end