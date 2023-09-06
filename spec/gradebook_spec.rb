require 'rspec'
require 'pry'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Course do

  it 'exists' do
  gradebook1 = GradeBook.new("schultz")
  expect(gradebook1).to be_instance_of(GradeBook)
  end

  it 'has attributes' do
    gradebook1 = GradeBook.new("schultz")
    expect(gradebook1.instructor).to eq("schultz")
    expect(gradebook1.course).to eq([])
    expect(gradebook1.list_all_students).to eq({})
    expect(gradebook1.students_below).to eq([])
  end

  it 'can add courses' do
    gradebook1 = GradeBook.new("schultz")
    gradebook1.add_course(:english)
    gradebook1.add_course(:math)

    expect(gradebook1.course).to eq([:english, :math])
  end

  it 'can list all students' do
    gradebook1 = GradeBook.new("schultz")
    gradebook1.add_course(:english)
    gradebook1.add_course(:math)
    student_milo = Student.new({name: "Milo", age: 25})
    student_isobel = Student.new({name: "Isobel", age: 21})
    gradebook1.enroll_student(student_milo, :math)
    gradebook1.enroll_student(student_isobel, :english)
    expect(gradebook1.list_all_students).to eq({:english=>["Isobel"], :math=>["Milo"]})
  end




end