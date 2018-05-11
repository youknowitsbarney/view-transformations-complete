
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
                            
                            self.shareButton.setImage(UIImage(named: "plus"), for: .normal)
                            self.darkView.backgroundColor = .black
                            self.darkView.transform = CGAffineTransform(scaleX: 15, y: 15)
                            self.shareButton.transform = CGAffineTransform(rotationAngle: self.toRadians(45))
                                .concatenating(CGAffineTransform(translationX: 320, y: 0))

            },
                           completion: {_ in
                            
            })
            
        } else {
            
            UIView.animate(withDuration: 3.0,
                           animations: {
                            
                            self.shareButton.transform = .identity
                            self.darkView.transform = .identity
                            self.shareButton.setImage(UIImage(named: "share"), for: .normal)
                            self.darkView.backgroundColor = .clear
                            
            },
                           completion: {_ in
                            
            })
            
        }
    }
    
    private func toRadians(_ degrees: CGFloat) -> CGFloat {
        
        return (degrees * .pi / 180)
    }
    
}
