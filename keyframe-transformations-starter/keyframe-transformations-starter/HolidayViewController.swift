
import UIKit

class HolidayViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var darkView: CustomUIView!
    @IBOutlet weak var shareButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func toggleShareMenu(_ sender: UIButton) {
        
        if darkView.transform == .identity {
            UIView.animate(withDuration: 3.0,
                           animations: {
                            
                            self.darkView.backgroundColor = .black
                            self.darkView.transform = CGAffineTransform(scaleX: 15, y: 15)
            },
                           completion: {_ in
                            
            })
        } else {
            
            UIView.animate(withDuration: 3.0,
                           animations: {
                            
                            self.darkView.transform = .identity
                            self.darkView.backgroundColor = .clear
            },
                           completion: {_ in
                            
            })
            
        }
    }
    
}
