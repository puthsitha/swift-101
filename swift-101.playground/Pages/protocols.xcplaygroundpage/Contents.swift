import Foundation

protocol ProductProtocol {
    var name: String { get }
    var price: Double { get }
    
    func showProductInfo() -> String
}

// Provide default implementation (optional)
extension ProductProtocol {
    func showProductInfo() -> String {
        return "Product: \(name), Price: $\(price)"
    }
}

struct Product: ProductProtocol {
    let name: String
    let price: Double
}

let item = Product(name: "iPhone", price: 999.99)
print(item.showProductInfo())
