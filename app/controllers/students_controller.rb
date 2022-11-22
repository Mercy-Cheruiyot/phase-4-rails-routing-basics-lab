class StudentsController < ApplicationController
    def index
        students=Student.all
        render json: students
        # byebug
    end
    def grades
        students=Student.order("grade DESC")
        render json:students
    end
    def highest_grade
        students=Student.order("grade DESC").limit(1)[0]
        render json: students
    end
end
