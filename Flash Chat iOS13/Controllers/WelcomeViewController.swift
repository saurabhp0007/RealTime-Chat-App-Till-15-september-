
import UIKit


class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text=""
        var charIndex = 0.0
        let titleText = K.appName
        for letter in titleText {
            print (letter)
            print(charIndex)
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { Timer in
               self.titleLabel.text?.append(letter)
           }
            charIndex+=1

       }
    }
    

}
