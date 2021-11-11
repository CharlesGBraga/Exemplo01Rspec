describe 'Test Double' do
  it "#--" do
    user = double('User') # Doublê Gera classe fake para teste
    allow(user).to receive_messages(name: 'Charles', password: 'secret')
    user.name
    user.password
  end
  
  #teste as_null_object
  it "#as_null_object" do
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Charles', password: 'secret')
    user.name
    user.password

    # utilizando as_null_object pra dispensar a mensagem de erro do teste causado pelo user.abc, isso mostra uma situação que pode ocorrer ao usar dublês com mocks
    # pra isso basta inserir as_null_objectconforme a linha 11
  end
end

# Doublê de teste são objetos falsos, onde posso indicar quais são as chamadas que ele aceita