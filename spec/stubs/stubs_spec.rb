require 'student'
require 'course'

# Métodos Stubs

# Permite testes sem que os métodos estejam implementados
describe 'stub' do
  it "#has_finished?" do
    student =  Student.new
    course = Course.new

    allow(student).to receive(:has_finished?)
                      .with(an_instance_of(Course))
                      .and_return(true)
    course_finished = student.has_finished?(course)
    expect(course_finished).to be_truthy
  end  

  # Argumentos dinâmicos permite implementar uma condicional, ou seja, validar qual argumento chega e testa-los utilizado somente pra uma instancia de classe (allow)
  it "#Argumentos dinamicos" do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        "Olá"
      elsif arg == :hi
        "Hi!!!"
      end
      expect(student.foo(:hello)).to eq("Olá")
      expect(student.foo(:hi)).to eq("Hi!!!")
    end
  end

  # Permite o teste para todo metodos não implementados instanciados (allow_any_instance_of)
  it '#allow_any_instance_of' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    # Veja que o teste se aplica a mais de uma instancia da classe Student
    expect(student.bar).to be_truthy
    expect(other_student.bar).to be_truthy
  end

  # Também é possivel forçar e testar erros dos métodos ainda não implementados
  it '#Erros' do
    student = Student.new
    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect{ student.bar }.to raise_error(RuntimeError)
  end  
end

# Um stub nada mais é que forçar uma resposta específica para um determinado método (Permite testar os métodos sem os mesmos estarem implementados)

# Stub trabalha na fase de Setup de acordo com as 4 fase de teste padrão unit:
#  ● Setup <-
#  ● Exercise
#  ● Verify
#  ● Teardown