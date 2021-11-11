describe 'Matchers de Igualdade' do

  around(:each) do |teste| # Hook around
    puts ">>> Antes"
    teste.run
    puts ">>> Depois"
   end

  it '#equal -  Testa se é o mesmo objeto' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to equal(y) # Erro não é o mesmo objeto
  end

  it '#be -  Testa se é o mesmo objeto (equivalente do equal)' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to be(y) # Erro não é o mesmo objeto
  end

  it '#eql -  Testa o valor' do
    x = "ruby"
    y = "ruby"
    expect(x).to eql(y) # Erro não é o mesmo objeto
  end

  it '#eq -  Testa o valor (equivalente do eql)' do
    x = "ruby"
    y = "ruby"
    expect(x).to eq(y) # Erro não é o mesmo objeto
  end

end