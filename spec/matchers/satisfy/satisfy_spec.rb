describe 'satisfy' do
  it {expect(10).to satisfy{|x| x % 2 == 0 }} # Espera que a o valor satisfaça a expressão 'x % 2 == 0' (Se o numero e par)

  it {
    expect(9).to satisfy('be a multiple of 3') do |x| # Outra forma de se utilizar o satisfy, passando o texto da saida eusando bloco
      x % 3 == 0 # Valida se 9 e multiplo de 3
    end 
  }
end
# Interessante usar o satisfy quando não houver um matcher que contemple seu teste