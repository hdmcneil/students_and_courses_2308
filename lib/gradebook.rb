class GradeBook
  attr_reader :instructor,
              :course,
              :list_all_students,
              :students_below

  def initialize(instructor)
    @instructor = instructor
    @course = []
    @list_all_students = {}
    @students_below = []
  end

  def add_course(subject)
    @course << subject
    @list_all_students[subject] = []
  end

  def enroll_student(student, course)
    if @list_all_students.key?(course)
      @list_all_students[course] << student.name
    else
      puts "Course not available"
    end
  end

    def students_below(threshhold)
      below_threshold_students =[]
      @list_all_students.each do |course, students_names|
        
    end
end