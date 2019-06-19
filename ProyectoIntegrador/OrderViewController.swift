import UIKit

class OrderViewController: UIViewController {
    
    var order: Order?
    
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var activityView: activityIndicator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = order?.pizza.name
        
        activityView.startLoading()
        
        switch order!.status {
        case .pending:
            status.text = "Procesando la alerta"
        case .accepted:
            status.text = "Preparando alerta"
        case .dispatched:
            status.text = "La alerta esta en camino"
        case .delivered:
            status.text = "Alerta entregada"
            activityView.strokeColor = UIColor.green
            activityView.completeLoading(success: true)
        }
    }
}
