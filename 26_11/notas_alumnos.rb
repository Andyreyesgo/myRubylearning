require 'byebug'
class Student
    attr_accessor :scores
    def initialize (name, scores=[])
        raise RangeError, 'Ingrese 4 calificaciones' if (scores.count != 4)
        @name = name
        @scores = scores
    end

    def average
        @scores.sum(0.0) / @scores.count #(0.0) entrega el resultado como un float, para tener decimales
        #devolver promedio de notas del alumno
    end
end

def best_of (students)
    students.map{|student| student.scores.max}
    students.map{|student| student.scores.max}.max  
    byebug
end


students =[]

10.times do |i|
    rand_scores =[]
        4.times do
            rand_scores << Random.rand(1..7)
        end
    students << Student.new("Estudiante #{i} ",rand_scores) #Aquí el valor Estudiante{i} le pone un nombre a cada alumno del arreglo
end

best_of(students)

students.map{|student| student.scores.max}

students.map{|student| student.scores.max}.max
1+1






