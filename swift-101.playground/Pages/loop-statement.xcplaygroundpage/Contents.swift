import Foundation

// Loops: When You Need to Repeat Yourself 🔁

let persons = ["Dalin", "Puthsitha", "Socheata"]
for person in persons {
    print("Person Name : \(person)")
}

// for-in loops : iterate over a collection (like an array or set) and access each item one by one.

var temperature = 100
while temperature > 75 {
    print("Still too hot! \(temperature),Please cooling down...")
    temperature -= 10
}
print("Ready to serve! 🍽️")

// while loops : loops with check a condition, keep looping while the condition is true, and will stop when condition fails

var tastings = 1
repeat {
    print("Tasting the sauce...")
    print("Adding seasoning")
    tastings += 1
} while tastings < 3


// repeat loops : Not common, repeat loops similar to while loops but the condition is checked at the end



// Break and continue : call as jump statement.

// - break : exit a loop during the iteration.

let cooks = ["busy", "busy", "available", "busy"]
for status in cooks {
    if status == "available" {
        print("Found available cook!")
        break
    }
}

// - continue : skip a specific condition.

let ingredients = ["flour", "expired_milk", "eggs", "sugar"]
for ingredient in ingredients {
    if ingredient.contains("expired") {
        print(" \(ingredient) is spoiled. Skipping...")
        continue
    }
    print("Adding \(ingredient) to mixture")
}
