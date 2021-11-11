describe 'Matcher comparação' do
  it '> maior que' do
    expect(5).to be > 1 # Espero que 5 seja maior que 1
  end

  it '>= maior que' do
    expect(5).to be >= 1 # Espero que 5 seja maior ou igual que 1
    expect(5).to be >= 5 # Espero que 5 seja maior ou igual que 5
  end

  it '<= menor que' do
    expect(5).to be <= 12 # Espero que 5 seja menor ou igual que 12
    expect(5).to be <= 5 # Espero que 5 seja menor ou igual que 5
  end

  it 'be_between - Inclusive' do
    expect(5).to be_between(2,7).inclusive # Espero que 5 esteja presente entre 2 e 7 levando em conta (inclusive) o 2 e 7
    expect(2).to be_between(2,7).inclusive # Espero que 5 esteja presente entre 2 e 7 levando em conta (inclusive) o 2 e 7
    expect(7).to be_between(2,7).inclusive # Espero que 5 esteja presente entre 2 e 7 levando em conta (inclusive) o 2 e 7  
  end

  it 'be_between - Exclusive' do
    expect(5).to be_between(2,7).exclusive # Espero que 5 esteja presente entre 2 e 7 não levando em conta (exclusive) o 2 e 7
    expect(3).to be_between(2,7).exclusive # Espero que 5 esteja presente entre 2 e 7 não levando em conta (exclusive) o 2 e 7
    expect(6).to be_between(2,7).exclusive # Espero que 5 esteja presente entre 2 e 7 não levando em conta (exclusive) o 2 e 7  
  end

  it 'match' do
    expect("teste@teste.com").to match(/..@../) # Valida a expressão regular se contem texto antes ou depois do @
  end

  it 'start_with' do
    expect("fulano de tal").to start_with("fulano") # Valida a expressão regular começa com "fulano"
    expect([1,2,3]).to start_with(1) # Valida se o array começa com 1"
  end

  it 'end_with' do
    expect("fulano de tal").to end_with("tal") # Valida a expressão regular termina com "fulano"
    expect([1,2,3]).to end_with(3) # Valida se o array termina com 1"
  end
end