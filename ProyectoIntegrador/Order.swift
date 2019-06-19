import Foundation

struct Order {
    let id: String
    let pizza: Pizza
    var status: OrderStatus
}

enum OrderStatus: String {
    case pending = "Pendiente"
    case accepted = "Aceptado"
    case dispatched = "Enviado"
    case delivered = "Entregado"
}
