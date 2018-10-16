
import UIKit

class HolidayViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var darkView: CustomUIView!
    @IBOutlet weak var shareButton: UIButton!
    
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var tumblrButton: UIButton!
    @IBOutlet weak var pinterestButton: UIButton!
    @IBOutlet weak var moreOptionsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        twitterButton.alpha = 0
        tumblrButton.alpha = 0
        pinterestButton.alpha = 0
        moreOptionsButton.alpha = 0

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
                            
                            UIView.animateKeyframes(withDuration: 2.0,
                                                    delay: 0.0,
                                                    options: [],
                                                    animations: {
                                                        
                                                        UIView.addKeyframe(withRelativeStartTime: 0.0,
                                                                           relativeDuration: 0.5,
                                                                           animations: {
                                                                            
                                                                            self.twitterButton.alpha = 1
                                                        })
                                                        
                                                        UIView.addKeyframe(withRelativeStartTime: 0.5,
                                                                           relativeDuration: 0.5,
                                                                           animations: {
                                                                            
                                                                            self.tumblrButton.alpha = 1
                                                        })
                                                        
                                                        UIView.addKeyframe(withRelativeStartTime: 1.0,
                                                                           relativeDuration: 0.5,
                                                                           animations: {
                                                                            
                                                                            self.pinterestButton.alpha = 1
                                                        })
                                                        
                                                        UIView.addKeyframe(withRelativeStartTime: 1.5,
                                                                           relativeDuration: 0.5,
                                                                           animations: {
                                                                            
                                                                            self.moreOptionsButton.alpha = 1
                                                        })
                            },
                                                    completion: nil)
            })
            
        } else {
            
            UIView.animateKeyframes(withDuration: 2.0,
                                    delay: 0,
                                    options: [],
                                    animations: {
                                        
                                        UIView.addKeyframe(withRelativeStartTime: 0.0,
                                                           relativeDuration: 0.5,
                                                           animations: {
                                                            
                                                            self.moreOptionsButton.alpha = 0
                                        })
                                        
                                        UIView.addKeyframe(withRelativeStartTime: 0.5,
                                                           relativeDuration: 0.5,
                                                           animations: {
                                                            
                                                            self.pinterestButton.alpha = 0
                                        })
                                        
                                        UIView.addKeyframe(withRelativeStartTime: 1.0,
                                                           relativeDuration: 0.5,
                                                           animations: {
                                                            
                                                            self.tumblrButton.alpha = 0
                                        })
                                        
                                        UIView.addKeyframe(withRelativeStartTime: 1.5,
                                                           relativeDuration: 0.5,
                                                           animations: {
                                                            
                                                            self.twitterButton.alpha = 0
                                        })
                                        
                                        
            },
                                    completion: {_ in
                                        
                                        UIView.animate(withDuration: 3.0,
                                                       animations: {
                                                        self.menuView.transform = .identity
                                                        self.shareButton.transform = .identity
                                                        self.darkView.transform = .identity
                                                        self.shareButton.setImage(UIImage(named: "share"), for: .normal)
                                                        self.darkView.backgroundColor = .clear
                                        })
            })
        }
    }
    
    @IBAction func showMoreOptions(_ sender: UIButton) {
        
        if menuView.transform == .identity {
            UIView.animate(withDuration: 1.5,
                           delay: 0,
                           options: [.curveEaseOut],
                           animations: {
                            self.menuView.transform = CGAffineTransform(translationX: 0, y: -64)
            },
                           completion: nil)
        } else {
            
            UIView.animate(withDuration: 1.5,
                           delay: 0,
                           options: [.curveEaseOut],
                           animations: {
                            self.menuView.transform = .identity
            },
                           completion: nil)
        }
    }
    
    private func toRadians(_ degrees: CGFloat) -> CGFloat {
        
        return (degrees * .pi / 180)
    }
    
}
