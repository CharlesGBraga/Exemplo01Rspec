describe 'Matcher Output' do
  # Saidas padrão
  it { expect{ puts "Charles" }.to output.to_stdout } # Espera que o puts seja apresentado na saida padrão (Monitor)
  it { expect{ print "Charles" }.to output("Charles").to_stdout } # Espera que a mensagem da saida tenha sido Charles na saida padrão (Monitor)
  it { expect{ puts "Charles" }.to output(/Charles/).to_stdout } # Espera que a mensagem da saida tenha sido Charles na saida padrão (Monitor) usando expressão regular testa somente o texto

  # Saidas Erros
  it { expect{ warn "Charles" }.to output.to_stderr } # Espera mensagem de erro
  it { expect{ warn "Charles" }.to output("Charles\n").to_stderr } # Espera que a mensagem da do erro tenha sido Charles na saida padrão (Monitor)
  it { expect{ warn "Charles" }.to output(/Charles/).to_stderr } # Espera que a mensagem da do erro tenha sido Charles na saida padrão (Monitor) usando expressão regular testa somente o texto
end

# STDOUT -> Saida padrão (Monitor)
# STDIN -> Entrada padrão (Teclado)
# STDERR -> Indica quando o sistema oprecaional a mensagem de erro