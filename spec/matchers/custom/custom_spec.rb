RSpec::Matchers.define :be_a_multiple_of do |expected|
  # expected == 3
  # actual == subject == 18

  # Customizando o teste (matcher)
  match do |actual|
    actual % expected == 0
  end

  # Customizando a mensagem de erro do matcher
  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
   end

  # Customizando a descrição do matcher
  description do
    "be multiple of #{expected}"
  end
end

describe 18, 'Custom matcher' do
  it { is_expected.to be_a_multiple_of(3) } # É esperado que 18 seja multiplo de 3, observe que o matcher "be_a_multiple_of" não existe e criaremos acima, será um matcher customizado 
end