// ## Problem: “How do we calculate a student’s grade for the term?”
//
// Each term has a midterm exam, a final exam, and a paper to write.
// Each piece has a weighted percentage
// All exams and papers are scored out of 100
//
// Exam weight is 30%, paper weight is 40%
//
// formula:
// (midtermExam * examWeight) + (finalExam * examWeight) + (paperScore * paperWeight)
//
// We need to convert the student’s grade to an overall grade and letter grade for the term
//
//
// Grade Scale:
// A > 80, B > 70, C > 60, D > 50, F < 50

// Creating variables to store data, calcuation for the grade value
let midtermExamScore = 80
let finalExamScore = 90
let paperScore = 75

// Constants
let examWeight: Double = 0.3
let paperWeight: Double = 0.4

let studentName = "John Bill"

let gradeTotal = (Double(midtermExamScore) * examWeight) + (Double(finalExamScore) * examWeight) + (Double(paperScore) * paperWeight)


// ---- Grade for John Bill


let midtermExam2Score = 70
let finalExam2Score = 50
let paper2Score = 40

let student2Name = "Bob Doe"

let grade2Total = (Double(midtermExam2Score) * examWeight) + (Double(finalExam2Score) * examWeight) + (Double(paper2Score) * paperWeight)


func calculateGradeTotal(midtermExamScore: Int, finalExamScore: Int, paperScore: Int) -> Double{
    
    let total = (Double(midtermExamScore) * examWeight) + (Double(finalExamScore) * examWeight) + (Double(paperScore) * paperWeight)
    return total
}

calculateGradeTotal(midtermExamScore: midtermExam2Score, finalExamScore: finalExam2Score, paperScore: paper2Score)

// Student 3
let midtermExam3Score = 70
let finalExam3Score = 50
let paper3Score = 40

let student3Name = "John Doe"

class Grade{
    
    let midtermExamScore: Int
    let finalExamScore: Int
    let paperScore: Int
    let studentName: String
    
    init(midtermExamScore: Int, finalExamScore: Int, paperScore: Int, studentName: String){
        
        self.midtermExamScore = midtermExamScore
        self.finalExamScore = finalExamScore
        self.paperScore = paperScore
        self.studentName = studentName
    }
    
    func calculateGradeTotal() -> Double{
        
        let total = (Double(self.midtermExamScore) * examWeight) + (Double(self.finalExamScore) * examWeight) + (Double(self.paperScore) * paperWeight)
        return total
    }
    
    func calculateLetterGrade() -> String {
        
        let total = calculateGradeTotal()
        if total > 80 {
            
            return "A"
        }
        else if total > 70 {
            
            return "B"
        }
        else if total > 60 {
            
            return "C"
        }
        else if total > 50 {
            
            return "D"
        }
        else{
            
            return "F"
        }
        
        // any other line of code!!!! WILL NOT RUN
    }
    
    func odeToStudents() -> String{
     
        let gradeTotal = calculateGradeTotal()
        let gradeLetter = calculateLetterGrade()
        let myString = "This student's name is \(studentName), with a grade of \(gradeTotal) and with a letter grade of \(gradeLetter)."
        return myString
    }

}

let lighthouseLabs = Grade(midtermExamScore: 20, finalExamScore: 30, paperScore: 40, studentName: "Bad Student")
lighthouseLabs.calculateGradeTotal()
lighthouseLabs.calculateLetterGrade()
print(lighthouseLabs.odeToStudents())


let grade2 = Grade(midtermExamScore: 100, finalExamScore: 90, paperScore: 95, studentName: "Good Student")
grade2.calculateGradeTotal()
grade2.calculateLetterGrade()
print(grade2.odeToStudents())

//let grade = Grade()
//grade.midtermExamScore = 60
//grade.finalExamScore = 60
//grade.paperScore = 80
//grade.studentName = "Jane Doe"
//
//grade.calculateGradeTotal()

//calculateGradeTotal(grade: grade)










