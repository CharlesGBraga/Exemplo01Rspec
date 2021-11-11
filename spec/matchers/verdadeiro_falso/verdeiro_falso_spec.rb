describe 'Matcher Verdadeiro ou falso' do
  it 'be true' do
    expect(1.odd?).to be true # 1 deve ser ímpar
  end

  it 'be_truthy' do
    expect(1.odd?).to be_truthy # 1 deve ser ímpar
  end

  it 'be false' do
    expect(1.even?).to be false # 1 não deve ser par
  end

  it 'be_falsey' do
    expect(1.even?).to be_falsey # 1 não deve ser par
  end

  it 'be_nil' do
    expect(defined? x).to be_nil # testar se está retornando nulo
  end

end