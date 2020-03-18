class Student

  attr_accessor :name, :grade
  attr_reader :id 
  
  @@all = []
  
  def initialize(name, grade, id=nil)
    @id = id
    @name = name
    @grade = grade
    @@all << self
  end   
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
       id INTEGER PRIMARY KEY,
       name TEXT,
       grade TEXT
       )
       SQL 
      DB [:conn].execute(sql)
    end 
  
  
end
