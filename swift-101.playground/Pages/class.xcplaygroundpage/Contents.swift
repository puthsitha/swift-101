import Foundation


// class reference type
// mutable
// casuse ARC low performance
// class in Heap

class Product {
    let name: String
    let price : Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
    
    deinit {
            print("\(name) is being deinitialized.")
    }
    
    func changeProductName(newProductName : String) -> Product{
        Product(name: newProductName, price: self.price)
    }
    
    func description() -> String {
            return "Product(name: \(name), price: \(price))"
    }
}

let product1 = Product(name: "Apple", price: 2)
print("Product 1 : \(product1.description())")

var product2 = product1
print("Product 2 : \(product2.description())")

product2 = product2.changeProductName(newProductName: "Banana")

// print both
print("Product 1 : \(product1.description())")
print("Product 2 : \(product2.description())")

