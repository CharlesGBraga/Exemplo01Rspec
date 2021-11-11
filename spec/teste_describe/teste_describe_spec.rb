describe [1,2] do # Ao passar o tipo do dado no describe ([1,2]) ele automaticamente instancia o  subject, não necessitando fazê-lo dentro do It
  it 'Array' do
    expect(subject).to be_kind_of(Array)
  end
end