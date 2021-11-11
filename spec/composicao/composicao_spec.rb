describe 'Charles G. Braga' do # Instanciando o a String Charles G. Braga
  it { is_expected.to start_with('Charles').and end_with('Braga') } # É esperado iniciar com Charles e terminar com Braga
  it { expect(fruta).to eq('banana').or eq('uva').or eq('melancia')} # É esperado que seja igual a banana ou uva ou melancia

  # def fruta # Helper method arbitrario
  #   %w(banana uva melancia).sample # Array de frutas
  # end
end

# É possivel criar metodos dentro do teste, como podemos ver nas linhas 5,6,7, esses métodos são chamados de métodos arbitrários
# porem, um modo mais organizado é criar métodos de módulos, ou seja, em outro local, por exemplo:
# 01 - Na raiz, criaremos uma pastar helpers com um arquivo helper.rb, neste caso o helper seráutilizado pra todos e qualquer teste,
# caso seja algo específico, o helper deve ser feito dentro da pasta do teste em questão.
# 02 - para que o sistema carregue corretamente o helper, no caso de helper especifico do teste, é necessário um require_relative no arquivo de teste,
#   neste caso, como estamos criando um helper pra toda a aplicação de teste então torna-se necessário inserir no arquivo spec>>spec_helper.rb a seguinte 
#   configuração:
#   require_relative '../helpers/helper' e dentro do bloco de configuração config.include Helper