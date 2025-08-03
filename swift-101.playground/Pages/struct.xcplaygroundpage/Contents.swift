import Foundation

// struct in stack
// struct is value type
// mutable

struct Person{
    let name : String
    let age : Int
    let isMale : Bool
    let isPriemue: Bool?
    
    // struct has automaticlly create an init for it self,
    // this init is the customize if [Dev] wanna custom the inititial
    init(name: String, age: Int, isMale: Bool = true, isPriemue: Bool?) {
        self.name = name
        self.age = age
        self.isMale = isMale
        self.isPriemue = isPriemue ?? false
    }
    
    func subscribePriemueMember() -> Person{
        Person(name: self.name, age: self.age, isPriemue: true)
    }
}

// creat obj
var teacher = Person(name: "Dalin", age: 18, isMale: false, isPriemue: nil)
print(teacher)
var student = Person(name: "Puthsitha", age: 24, isPriemue: nil)
print(student)

// update struct
student = student.subscribePriemueMember()
// access struct
print("Student Name : \(student.name) : now \(student.isPriemue ?? false ? "is Priemun" : "stil not Priemun")")
