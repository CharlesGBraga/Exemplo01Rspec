describe (1..5), 'Range' do # Declarando um Range (Intervalo entre 1 e 5) 
  it "cover" do
    expect(subject).to cover(2,5) # Espera que 2 e 5 estejam dentro (Cobridos) pelo intervalo
    expect(subject).not_to cover(0,6) # Espera que 0 e 6 não estejam dentro (Cobridos) pelo intervalo 
  end
  
end