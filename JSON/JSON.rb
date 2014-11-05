require 'json'
require 'open-uri'

class student_info
  def initialize
    @students = nil
    @sorted_students = nil
  end
  def fetch_students
    @students = JSON.load(open("http://dev.dryan.net.s3.amazonaws.com/students.json"))
  end
  def sort_students
    fetch_students
    sort_order = ["Freshman", "Sophomore", "Junior", "Senior"]
    organize_info = @students.each{ |k,v| k["grade"].capitalize!}
    @sorted_students = organize_info.sort_by{|k,v| [sort_order.index(k["grade"])]}
    display_info
  end
  def display_info
    puts @sorted_students
  end
end
info = student_info
info.sorted_students