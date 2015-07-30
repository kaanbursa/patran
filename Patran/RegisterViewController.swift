//
//  RegisterViewController.swift
//  Patran
//
//  Created by kaanbursa on 7/30/15.
//  Copyright (c) 2015 kaanbursa. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var userEmailField: UITextField!
    @IBOutlet weak var userPasswordField: UITextField!
    @IBOutlet weak var userPasswordRetype: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButton(sender: AnyObject) {
        
        let userName = userNameField.text;
        let userEmail = userEmailField.text;
        let userPassword = userPasswordField.text;
        let reTypePassword = userPasswordRetype.text;
        
        // check empty fills
        
        if(userName.isEmpty || userEmail.isEmpty || userPassword.isEmpty || reTypePassword.isEmpty )
        {
            UserAlertMessage("Butun Bosluklari Doldurmalisin")
            return;
        }
        
        if (userPassword != reTypePassword)
        {
            UserAlertMessage("Sifreler Eslesmedi!")
            
            return;
        
        }
        
        
        // Save store data after mySQL
        
        // display alert message with confirmation
        
    }
    
    func UserAlertMessage(userMessage: String){
        
        var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated:true, completion:nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
