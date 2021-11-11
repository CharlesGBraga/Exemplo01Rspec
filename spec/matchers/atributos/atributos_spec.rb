require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = "Charles"
    pessoa.idade = 20

    expect(pessoa).to have_attributes(nome: "Charles", idade: 20)
    expect(pessoa).to have_attributes(nome: starting_with("C"), idade: (be >= 20)) # Nome comça com C e idade maior igual a 20
  end
  
end

# https://gist.github.com/JunichiIto/f603d3fbfcf99b914f86