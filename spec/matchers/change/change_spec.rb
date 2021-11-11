require "contador"

describe 'Matcher Change' do
  it { expect{Contador.icrementa}.to change { Contador.qtd } } # Espero que o Contador.icrementa altere o valor de Contador.qtd
  it { expect{Contador.icrementa}.to change { Contador.qtd }.by(1) } # Espero que o Contador.icrementa altere o valor de Contador.qtd em um intervalo de 1 unidade
  it { expect{Contador.icrementa}.to change { Contador.qtd }.from(2).to(3) } # Espero que o Contador.icrementa altere o valor de Contador.qtd de 2 para 3
end