
import UIKit

class KeyframeViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func animate(_ sender: UIButton) {
        
        UIView.animateKeyframes(withDuration: 10.0,
                                delay: 0,
                                options: [],
                                animations: {
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.0,
                                                       relativeDuration: 0.125,
                                                       animations: {
                                                        
                                                        self.blueView.frame.size.width -= 80
                                                        self.blueView.frame.size.height -= 80
                                                        self.blueView.center.x -= 60
                                    })
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.125,
                                                       relativeDuration: 0.25,
                                                       animations: {
                                                        
                                                        self.blueView.center.y -= 120
                                    })
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.375,
                                                       relativeDuration: 0.25,
                                                       animations: {
                                                        
                                                        self.blueView.center.x += 200
                                    })
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.625,
                                                       relativeDuration: 0.25,
                                                       animations: {
                                                        
                                                        self.blueView.center.y += 370
                                    })
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.875,
                                                       relativeDuration: 0.125,
                                                       animations: {
                                                        
                                                        self.blueView.center.x -= 140
                                                        self.blueView.center.y -= 250
                                                        self.blueView.frame.size.width += 80
                                                        self.blueView.frame.size.height += 80
                                    })
                                    
        },
                                completion: nil)
    }
}
