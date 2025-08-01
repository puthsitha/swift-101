import Foundation


let ovenTemperature = 180
if ovenTemperature > 200 {
    print("Temperature too high! Lower it")
} else if ovenTemperature < 150 {
    print("Temperature too low! Increase it")
} else {
    print("Temperature is perfect!")
}

//Ternary operators
let kitchenIsClean = true
kitchenIsClean ? print("Ready to cook!") : print("Clean kitchen first!")

//Switch
let mealType = "dessert"
switch mealType {
    case "breakfast":
        print("Serving from 7-11 AM")
    case "lunch":
        print("Serving from 12-3 PM")
    case "dinner":
        print("Serving from 6-10 PM")
    case "dessert":
        print("Available all day!")
    default:
        print("Kitchen closed")
}

//Switch with Interval Matching
let temperature = 175
switch temperature {
    case 1...100:
        print("Too cold!")
    case 101...160:
        print("Getting there...")
    case 161...180:
        print("Perfect temperature!")
    case 181...300:
        print("Too hot!")
    default:
        print("Check thermometer!")
}

//Compound cases
let cookingMethod = "baking"
switch cookingMethod {
    case "baking", "roasting":
        print("Use the oven")
    case "frying", "sautéing":
        print("Use the stove")
    case "steaming", "boiling":
        print("Use a pot with water")
    default:
        print("Check recipe for method")
}

//Switch with Enums
enum CookingStatus {
    case preparing
    case cooking
    case ready
    case burned
}

let status = CookingStatus.ready
switch status {
    case CookingStatus.preparing: // call the enum
        print("Getting ingredients ready")
    case .cooking: // just dot (no need to call enum)
        print("Keep an eye on the temperature!")
    case .ready:
        print("Time to serve!")
    case .burned:
        print("Order takeout...")
}

