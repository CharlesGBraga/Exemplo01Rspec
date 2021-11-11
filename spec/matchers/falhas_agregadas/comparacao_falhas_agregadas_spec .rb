describe 'Matcher comparação' do
  it 'be_between - Inclusive', aggregate_failures: true do
    # aggregate_failures do 
      expect(5).to be_between(2,7).inclusive # Espero que 5 esteja presente entre 2 e 7 levando em conta (inclusive) o 2 e 7
      expect(1).to be_between(2,7).inclusive # Espero que 1 esteja presente entre 2 e 7 levando em conta (inclusive) o 2 e 7
      expect(8).to be_between(2,7).inclusive # Espero que 8 esteja presente entre 2 e 7 levando em conta (inclusive) o 2 e 7  
    # end
  end
end

# Forçando erro na linha 05 e 06, neste caso por padrão o rspec para no primeiro erro, caso queira exibir todos os erro existentes é necessário agrega-los 
# usando "aggregate_failures" outra forma e ativando "aggregate_failures" no teste por exemplo  "it 'be_between - Inclusive', aggregate_failures: true do". E ainda 
# caso necessário em todos os testes podemos inserir no spec_helper ativando pra todos os nossos testes