
class Department
    attr_accessor :name, :students, :sections, :reqsection, :SecA, :SecB, :SecC, :secAroll, :secBroll, :secCroll, :totalnumber, :totalrollnumber
    def initialize(dept)
        self.name = dept
        self.students = []
        self.sections = ['A','B','C']
        self.reqsection = nil
        self.SecA = []
        self.SecB = []
        self.SecC = []
        self.secAroll = []
        self.secBroll = []
        self.secCroll = []
        self.totalnumber = []
        self.totalrollnumber = []
    end
    
    def get_name()
        return self.name
    end

    def get_section(section)
        if section[section]!=nil
            return section[section]
        else
            return nil
        end
    end
    def get_department(student_name)
        x = 0
        self.students.each do |stud|
            if stud == student_name
                x = x+1
            end
        end
        if x>0
            return self.name
        else
            return nil
        end
    end
    def delete(student_name)
        self.students.each do |stud,i|
            if stud == student_name
                self.students.delete(stud)
                self.students.sort
                self.totalrollnumber.delete(i)
            end
        end
        self.SecA.each do |stud,i|
            if stud == student_name
                self.SecA.delete(stud)
                self.SecA.sort 
            end
        end
        self.SecB.each do |stud,i|
            if stud == student_name
                self.SecB.delete(student_name) 
                self.SecB.sort!
            end
        end
        self.SecC.each do |stud,i|
            if stud == student_name
                self.SecC.delete(student_name) 
                self.SecC.sort!
            end
        end
    end

    def enroll(student_name)
        if self.SecA.length<10
            self.reqsection = self.sections[0]
            self.SecA << student_name
            self.SecA.sort!
            self.students << student_name
            self.students.sort!
            self.totalrollnumber << self.students.length
            self.secAroll <<  self.SecA.length  
            self.totalnumber[0] =self.secAroll.length
            self.totalnumber[1] = self.reqsection
            self.SecA.sort
        elsif self.SecB.length<10
            self.reqsection = self.sections[1]
            self.SecB << student_name
            self.students << student_name
            self.secBroll <<  self.SecB.length
            self.totalrollnumber << self.SecB.length
            self.totalnumber[0] = self.secBroll.length
            self.totalnumber[1] = self.reqsection
            self.SecB.sort
        elsif self.SecC.length<10
            self.reqsection = self.sections[2]
            self.SecC << student_name
            self.students << student_name
            self.secCroll <<  self.SecC.length
            self.totalrollnumber << self.secCroll.length
            self.totalnumber[0] = self.secCroll.length
            self.totalnumber[1] = self.reqsection
            self.SecC.sort
        else 
            self.totalnumber = 0
        end
        return self.totalnumber
    end
    def newenroll(student_name,section)
        if section == 'A'
           self.reqsection = self.sections[0]
            self.SecA << student_name
            self.SecA.sort!
            self.students << student_name
            self.students.sort!
            self.totalrollnumber << self.students.length
            self.secAroll <<  self.SecA.length  
            self.totalnumber[0] =self.secAroll.length
            self.totalnumber[1] = self.reqsection
        elsif section == 'B'
            self.reqsection = self.sections[1]
            self.SecB << student_name
            self.SecB.sort!
            self.students << student_name
            self.students.sort!
            self.totalrollnumber << self.students.length
            self.secBroll <<  self.SecB.length  
            self.totalnumber[0] =self.secBroll.length
            self.totalnumber[1] = self.reqsection
        else section == 'C'
            self.reqsection = self.sections[2]
            self.SecC << student_name
            self.SecC.sort!
            self.students << student_name
            self.students.sort!
            self.totalrollnumber << self.students.length
            self.secAroll <<  self.SecC.length  
            self.totalnumber[0] =self.secCroll.length
            self.totalnumber[1] = self.reqsection
        end
        return self.totalnumber
    end

    def sect_view(sect)
        str="List of students:"
        if self.name == 'EEE'
            if sect == 'A'
                self.SecA.each_index do |i|
                     str = str+"\n#{self.SecA[i]} #{self.name}#{sect}0#{self.secAroll[i]}"
                end
            elsif sect == 'B'
                self.SecB.each_index do |i|  
                    str = str+"\n#{self.SecB[i]} - #{self.name}#{sect}0#{self.secBroll[i]}"
                end
            else sect == 'C'
                self.SecC.each_index do |i|  
                    str = str+"\n#{self.SecC[i]} - #{self.name}#{sect}0#{self.secCroll[i]}"
                end
            end
        elsif self.name == 'MECH'
            if sect == 'A'
                self.SecA.each_index do |i|
                     str = str+"\n#{self.SecA[i]} #{self.name}#{sect}0#{self.secAroll[i]}"
                end
            elsif sect == 'B'
                self.SecB.each_index do |i|  
                    str = str+"\n#{self.SecB[i]} - #{self.name}#{sect}0#{self.secBroll[i]}"
                end
            else sect == 'C'
                self.SecC.each_index do |i|  
                    str = str+"\n#{self.SecC[i]} - #{self.name}#{sect}0#{self.secCroll[i]}"
                end
            end
        elsif self.name == 'CSE'
            if sect == 'A'
                self.SecA.each_index do |i|
                     str = str+"\n#{self.SecA[i]} - #{self.name}#{sect}0#{self.secAroll[i]}"
                end
            elsif sect == 'B'
                self.SecB.each_index do |i|  
                    str = str+"\n#{self.SecB[i]} - #{self.name}#{sect}0#{self.secBroll[i]}"
                end
            else sect == 'C'
                self.SecC.each_index do |i|  
                    str = str+"\n#{self.SecC[i]} - #{self.name}#{sect}0#{self.secCroll[i]}"
                end
            end
        else self.name == 'CIVIL'
            if sect == 'A'
                self.SecA.each_index do |i|
                     str = str+"\n#{self.SecA[i]} #{self.name}#{sect}0#{self.secAroll[i]}"
                end
            elsif sect == 'B'
                self.SecB.each_index do |i|  
                    str = str+"\n#{self.SecB[i]} - #{self.name}#{sect}0#{self.secBroll[i]}"
                end
            else sect == 'C'
                self.SecC.each_index do |i|  
                    str = str+"\n#{self.SecC[i]} - #{self.name}#{sect}0#{self.secCroll[i]}"
                end
            end
        end
        return str
    end
    def get_department_view
        str = "List of students:"
        if self.name == 'EEE'
            if self.reqsection == 'A'
                self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            elsif self.reqsection == 'B'
                self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            else self.reqsection == 'C'
                 self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            end
                    
        elsif self.name == 'MECH'
            if self.reqsection == 'A'
                self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            elsif self.reqsection == 'B'
                self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            else self.reqsection == 'C'
                 self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            end
        elsif self.name == 'CSE'
            if self.reqsection == 'A'
                self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            elsif self.reqsection == 'B'
                self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            else self.reqsection == 'C'
                 self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            end
        else self.name == 'CIVIL'
           if self.reqsection == 'A'
                self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            elsif self.reqsection == 'B'
                self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
            else self.reqsection == 'C'
                 self.students.each_index do |i| 
                    str =  str+"\n#{self.students[i]} - #{self.name}#{self.reqsection}0#{self.totalrollnumber[i]}"
                end
        
            end
        end
        return str
    end
    def stud_details(student_name)
        str = ""
        self.SecA.each_with_index do |stud, i|  
            if stud == student_name
                str =str+"#{self.SecA[i]} - #{self.name} - Section #{self.sections[0]} - #{self.name}#{self.sections[0]}0#{self.secAroll[i]}"
            end
        end
        self.SecB.each_with_index do |stud, i|  
            if stud == student_name
                str =str+"#{self.SecB[i]} - #{self.name} - Section #{self.sections[1]} - #{self.name}#{self.sections[0]}0#{self.secBroll[i]}"
            end
        end
        self.SecC.each_with_index do |stud, i|  
            if stud == student_name
                str =str+"#{self.SecC[i]} - #{self.name} - Section #{self.sections[2]} - #{self.name}#{self.sections[0]}0#{self.secCroll[i]}"
            end
        end
        return str
    end
end