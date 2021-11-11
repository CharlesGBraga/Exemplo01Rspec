RSpec::Matchers.define_negated_matcher :exclude, :include # Importando negativação do matcher

describe Array.new([1,2,3]), type: filter_tag do
  before(:context) do
    puts "Rodando antes de toda a suite de teste!"
  end

  it "Include" do # Valida se os elementos estão incluidos no Array
    expect(subject).to include(2)
    expect(subject).to include(2) 
  end

  it "Exclude" do # Valida se os elementos estão Excluidos (Fora) do Array
    expect(subject).to exclude(4) 
  end
  
  it "contain_exactly" do # Valida se os elementos são exatamente os que contem no Array (Sem a chave, pois valida os elementos )
    expect(subject).to contain_exactly(2,1,3) 
  end

  it "match_array" do # Valida se o array é exatamente Array do subject
    expect(subject).to match_array([1,2,3]) 
  end

  after(:context) do
    puts "Rodando depois de toda a suite de teste!"
  end
end


# RSpec::Matchers.define_negate_matcher :exclude, :include -> Define os metodos negados, onde exclude e a negação do include