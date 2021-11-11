require 'calculator'

describe Calculator do
  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'with negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    xit 'with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end 

  context "#div" do
    it 'divide by 0' do
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError) # Valida classe do erro
      expect{subject.div(3, 0)}.to raise_error("divided by 0") # Valida descrição do erro
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0") # Valida Classe e Descrição do erro 
      expect{subject.div(3, 0)}.to raise_error(/divided/) # Expressão regular, validase a descrição do erro possui a palavra "divided"
    end    
  end
  
end

# - Padrão XUnit
# x Setup: Quando você coloca o SUT (system
# under test, o objeto sendo testado) no estado
# necessário para o teste; (calc = Calculator.new)
# × Exercise: Quando você interage com o SUT; (result = subject.sum(-5, -7))
# × Verify: Quando você verifica o comportamento
# esperado; (expect(result).to eq(2))
# × Teardown: Quando você coloca o sistema no
# estado em que ele estava antes do teste ser
# executado.
# x it especifica o teste, xit deixa pendente


# x Context no Rspec -> seguir convensão (Com bom senso) em https://www.betterspecs.org/br/
# x subject -> Quando informamos a classe no teste, o mesmo já instancia, neste caso, devemos trocar em nosso exemplo o result = calc.sum(-5, -7)
# por result = subject.sum(-5, -7), pra renomear o subject basta inserir esta linha subject(:calc) {described_calss.new()} e podemos continuar a usar calc