class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @scores = []

  end
  
  def log_score(grade)
    @scores << grade
  end

  def grade
    total_grades = @scores.sum
    average = total_grades / @scores.length.to_f
  end

end
