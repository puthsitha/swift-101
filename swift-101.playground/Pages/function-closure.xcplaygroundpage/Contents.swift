import Foundation


// Function
func getUserName(){
    let name = "Puthsitha"
    print(name)
}

func isSignle() -> Bool{
    return true
}

func totalScore(score: Double) {
    print("Score is \(score*2)")
}

func addTwoNumber(number1:Int, numbere2:Int) -> Int{
    return number1 + numbere2
}

// Closure
func fetchApi(url:String, response:()->String){
    let result = response()
    print("Fetch data from \(url) : \(result)")
}

func fetchData(completion: (String) -> Void) {
    let fakeData = "Fetched JSON Data"
    completion(fakeData)
}

getUserName()
print(isSignle() ? "Single" : "Not Single")
totalScore(score: 36.9)
print(addTwoNumber(number1: 3, numbere2: 6))
fetchApi(url: "https://example.com") {
    return "Successfully"
}
fetchData { data in
    print("Data received: \(data)")
}
