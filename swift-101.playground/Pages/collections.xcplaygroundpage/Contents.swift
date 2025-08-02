import Foundation


//📦 Arrays: ordered collection, duplicate elements, accessed by index
//🔢 Sets: unordered collection, unique elements, no duplicate, don't accessed by index
//👯 Tuples: fixed-size multiple values of different types, returning multiple values from functions,accessed Index/Name
var character = (name: "Puthsitha", nickname: "Varkim", age: 18)
print(character.name)

func getUserInfo() -> (name: String, age: Int){
    let username = "Puthsitha"
    let age = 18
    return (username, age)
}
let userName = getUserInfo().name
print("Username : \(userName)")
//📖 Dictionaries: key-value pairs, unique key, unordered, accessed by key
