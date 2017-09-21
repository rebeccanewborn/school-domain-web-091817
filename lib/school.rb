# code here!
require 'pry'

class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade] == nil
      roster[grade] = []
    end
    roster[grade] << name
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.each do |grade, array|
      array.sort!
    end
  end
end
