describe (1..5), 'Ranges' do # Instanciando o range (Intervalo de 1 a 5)
  it {is_expected.to cover(2)} # É esperado que 2 esteja no intervalo de 1 a 5 (is_expect e o mesmo que expect(subject)) isso permite que seja excrito em uma linha somente
  it {is_expected.not_to cover(6)} 

  # Outra vantagem é a forma que a sáida é apresentada no terminal, bem mais verboso e descritiva
end