require 'student'
require 'course'

# Métodos Stubs

# Testando comportanmentos dos métodos já criados e ainda não implementados
describe 'Mocks' do
  it "#bar" do
    #setup
    student =  Student.new
    
    #Verify
    expect(student).to receive(:bar)
        
    # Exercise
    student.bar

    # Invertemos a ordem do padrão unit entre Verify e exercise, pois, o expect do mock e executado somente na fase de verify 
  end  

  # Mock Com restrição de argumentos
  it "#args" do
    student = Student.new
    expect(student).to receive(:foo).with(123).with(123)
    student.foo(123)
  end

  it "#repetição" do
    student = Student.new
    expect(student).to receive(:foo).with(123).with(123).twice
    student.foo(123)
    student.foo(123)
  end

  it "#retorno" do
  student = Student.new
  expect(student).to receive(:foo).with(123).with(123).and_return(true)
  student.foo(123)
end
  
end

# Mock trabalha na fase Verify de acordo com as 4 fase de teste padrão unit, ele se preocupa mais com o comportamento do que com o resultado
#  ● Setup
#  ● Exercise
#  ● Verify <-
#  ● Teardown


# Argumentos:
# expect(obj).to receive(:message).once
# expect(obj).to receive(:message).twice
# expect(obj).to receive(:message).exactly(3).times
# expect(obj).to receive(:message).at_least(:once)
# expect(obj).to receive(:message).at_least(:twice)
# expect(obj).to receive(:message).at_least(n).times