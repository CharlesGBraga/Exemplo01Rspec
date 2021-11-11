require 'pessoa'

# Shared Example recebe o sentimento Metodos como objeto através do send, assim o teste fica dinâmico
shared_examples 'status' do |sentimento|
  it "#{sentimento}" do
    pessoa.send("#{sentimento}!")
    expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}")
  end
  
end

describe 'pessoa' do
  subject(:pessoa) { Pessoa.new }

  # Formas de executar o teste compartilhado (Shared Example)
  include_examples 'status', :feliz
  include_examples 'status', :triste
  include_examples 'status', :contente

  it_behaves_like 'status', :feliz
  it_behaves_like 'status', :triste
  it_behaves_like 'status', :contente

  it_should_behave_like 'status', :feliz
  it_should_behave_like 'status', :triste
  it_should_behave_like 'status', :contente
end

# VocÊ agrupa o teste com a palavrinha shared_examples, serve para compartilhar testes, utilizaddo quando há repetições