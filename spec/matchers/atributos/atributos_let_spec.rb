require 'pessoa'

describe 'Atributos' do

  # before(:each) do
  #   @pessoa = Pessoa.new 
  # end
  let(:pessoa) { Pessoa.new } # Substituindo o before por let

  it 'have_attributes' do    
    pessoa.nome = "Charles"
    pessoa.idade = 20

    expect(pessoa).to have_attributes(nome: "Charles", idade: 20)
    expect(pessoa).to have_attributes(nome: starting_with("C"), idade: (be >= 20)) # Nome comça com C e idade maior igual a 20
  end

  it 'have_attributes' do    
    pessoa.nome = "Jose"
    pessoa.idade = 25

    expect(pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 20)) # Nome comça com J e idade maior igual a 20
  end


  
end

# Quando você precisa atribuir uma variável, ao invés de usar um bloco before para criar uma variável de instância, use let.
# Ao usar let, a variável é carregada apenas quando ela é utilizada pela primeira vez no teste e fica na cache até o teste em
# questão terminar.