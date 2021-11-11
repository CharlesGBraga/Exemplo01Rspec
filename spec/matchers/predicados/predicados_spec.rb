describe 'Predicados' do
  it 'odd' do
    expect(1).to be_odd # Verifica se é impar
  end

  it 'even' do
    expect(2).to be_even # Verifica se é par
  end

  it 'be_nil' do
    x = ""
    expect(x).to be_empty
  end
  
end