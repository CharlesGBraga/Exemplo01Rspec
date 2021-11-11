# Callbacks que carregam algo anes dos testes, do bloco e/ou de toda suite de testes 
# Antes de toda Suite de teste
before(:suite) do
  @pessoa = Pessoa.find(123456) 
end

# Depois de toda Suite de teste
after(:suite) do
  @pessoa = Pessoa.find(123456) 
end

# Antes de todos os testes
before(:context) do
  @pessoa = Pessoa.find(123456) 
end

# Depois de todos os testes
after(:context) do
  @pessoa = Pessoa.find(123456) 
end

# Depois de cada testes
after(:each) do
  @pessoa = Pessoa.find(123456) 
end

# Depois de cada testes
after(:each) do
  @pessoa = Pessoa.find(123456) 
end

# Também pode ser carregada dentro do spec_helper.rb, pasando desta maneira:
#   config.before(:suite) do
#     puts "Rodando pra toda a suite de teste" 
#   end
  

Usar hooks around, que substitui o exemplo acima desta forma:
# around(:each) do |teste| # each roda a cada teste
#   puts ">>> Antes"
#   teste.run # Roda o teste
#   puts ">>> Depois"
# end