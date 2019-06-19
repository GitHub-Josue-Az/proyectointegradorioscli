import UIKit

class PizzaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pizzaImageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var miscellaneousText: UILabel!
    @IBOutlet weak var amount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
