
require_relative './department'

class Application
  attr_accessor :departments
  def initialize
    self.departments = []
    ['EEE', 'MECH', 'CSE', 'CIVIL'].each do|dept|
    self.departments << Department.new(dept)
  end

  def enroll(student_name, student_department)
    department = self.departments.detect { |dept| dept.get_name == student_department }
    rollnumber = department.enroll(student_name)
    section = rollnumber[1]
    if rollnumber == 0
      str=""
      str=str+ "Error: Seats are not available in #{student_department}"
    else
      str=""
      if rollnumber[0] <= 9
        str = str+"You have been enrolled to #{student_department}" \
        "\nYou have been allotted section #{section}"\
        "\nYour roll number is #{student_department}#{section}0#{rollnumber[0]}"\
      else
        str = str+"You have been enrolled to #{student_department}" \
        "\nYou have been allotted section #{section}"\
        "\nYour roll number is #{student_department}#{section}#{rollnumber[0]}"\
      end
    end
    return str
  end

  def change_dept(student_name, student_department)
    department1 = self.departments.detect { |dept| dept.get_department(student_name) != nil }
    if department1==nil
      return "abc"
    end
    department2 = self.departments.detect {|dept| dept.get_name == student_department}
    if department2==nil
      return "abc"
    end
    rollnumber = department2.enroll(student_name)
    section = rollnumber[1]
    if rollnumber != 0
      str = ""
      department1.delete(student_name)
      str = str+"You have been enrolled to #{student_department}" \
      "\nYou have been allotted section #{section}" \
      "\nYour roll number is #{student_department}#{section}0#{rollnumber[0]}"
    else
      str=""
      str=str+"Error: Seats are not available in #{student_department} "
    end
    return str
  end

  def change_section(student_name, section)
    department1 = self.departments.detect { |dept| dept.get_department(student_name) != nil }
    if department1 == nil
      return "abc"
    end
    if department1.get_section(section)!=nil
      department1.delete(student_name)
      rollnumber = department1.newenroll(student_name,section)
      section =rollnumber[1]
      str = ""
      str = str+"You have been allotted section #{section}" 
      str = str+"\nYour roll number is #{section}0#{rollnumber[0]}"
    else
      str=""
      str=str+"Error: Seats are not available in #{section} section"
    end
    return str
  end

  def department_view(student_dept)
    puts"List of students:" 
    department = self.departments.detect { |dept| dept.get_name == student_dept }
     if department == nil
      return 'abc'
    else
      return department.get_department_view
    end
end

  def section_view(student_dept, section)
    puts "List of students:"
    department = self.departments.detect { |dept| dept.get_name == student_dept }
    if department == nil
      return 'abc'
    else
      return department.sect_view(section)
    end
  end

  def student_details(student_name)
    department = self.departments.detect { |dept| dept.get_department(student_name) != nil }
     if department == nil
      return 'abc'
    else
      return department.stud_details(student_name)
    end
  end
end
end