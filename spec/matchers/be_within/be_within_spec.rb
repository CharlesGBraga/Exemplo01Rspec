describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12.0) } # Expera que 12.5 esteja entro o intervalo máximo de 0.5 a partir de 12 
  it { expect([12.5, 12.4, 11.7]).to all (be_within(0.5).of(12.0)) } # Expera todos os elementos do array estejam entro o intervalo máximo de 0.5 a partir de 12   
end

# Delta 0.5
# Ponto de referência 12
# Intervalo ficaria assim -> 11.5 - 11.6 - 11.7 - 11.8 - 11.9 - 12 - 12.1 - 12.2 - 12.3 - 12.4 - 12.5 