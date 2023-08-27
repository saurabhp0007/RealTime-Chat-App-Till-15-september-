
import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
 

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text,let password = passwordTextfield.text{
            Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in
//                guard let strongSelf = self else { return }
               
                     
                if let e = error {
                    print(e)
                }else{
                    self!.performSegue(withIdentifier:K.registerSegue, sender: self)
                }
            }
            
        }
    }
    
}
