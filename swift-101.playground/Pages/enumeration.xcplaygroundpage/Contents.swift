import Foundation
import UIKit

struct Order{
    let id: Int
    let status: OrderStatus
    
    func updateOrderStatus(orderStatus: OrderStatus)->Order{
        Order(id: self.id, status: orderStatus)
    }
}

enum OrderStatus:String {
    case pendingOrder = "Pendding"
    case acceptFromMerchant = "Accept"
    case pickUpFromDriver = "PickUp"
    case driverDelivery = "Delivering"
    case completeOrder = "Complete"
    case cancelOrder = "Cancel"
    
    func description() -> String {
        switch self {
        case .pendingOrder:
            return "Order is pending."
        case .acceptFromMerchant:
            return "Order accept from merchant."
        case .pickUpFromDriver:
            return "Driver is picking up your order."
        case .driverDelivery:
            return "Drive is on the way delivering food for you."
        case .completeOrder:
            return "This order is completed."
        case .cancelOrder:
            return "This order is cancel from merchant."
        }
    }

       func color() -> UIColor {
           switch self {
           case .pendingOrder:
               return .orange
           case .acceptFromMerchant:
               return .yellow
           case .pickUpFromDriver:
               return .systemPink
           case .driverDelivery:
               return .blue
           case .completeOrder:
               return .green
           case .cancelOrder:
               return .red
           }
       }
}

// pending
var order = Order(id: 1, status: .pendingOrder)
print(order.status.description())

// accept
order = order.updateOrderStatus(orderStatus: .acceptFromMerchant)
print(order.status.description())

// pickup
order = order.updateOrderStatus(orderStatus: .pickUpFromDriver)
print(order.status.description())

// delivery
order = order.updateOrderStatus(orderStatus: .driverDelivery)
print(order.status.description())

// complete
order = order.updateOrderStatus(orderStatus: .completeOrder)
print(order.status.description())

// cancel
order = order.updateOrderStatus(orderStatus: .cancelOrder)
print(order.status.description())

