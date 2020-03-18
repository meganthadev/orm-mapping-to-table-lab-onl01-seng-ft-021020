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
      CREATE TABLE students (
        id INTEGER PRIMARY KEY,
        name STRING,
        grade STRING
      );
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    sql = <<-SQL 
    
  
end
