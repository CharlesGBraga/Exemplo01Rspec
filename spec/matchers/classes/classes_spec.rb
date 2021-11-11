require 'string_nao_vazia'
describe "Classes" do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Fixnum) # Verifica se o numero 10 e do tipo inteiro - Exatamente para o tipo da classe
  end

  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(10).to be_kind_of(Integer) # Verifica se o numero 10 e do tipo inteiro - Pode ser por tipo da classe
  end

  it 'respond_to' do
    expect("Charles Braga").to respond_to(:size) # Verifica se responde ou ão a um determinado tipo de método
    expect("Charles Braga").to respond_to(:count) 
  end

  it 'be_a / be_an' do
    str = StringNaoVazia.new
    expect(str).to be_a(String) # Verifica classe, como o be_kind_of e be_instance_of  expect(str).to be_a(StringNaoVazia)

    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)
  end
end
