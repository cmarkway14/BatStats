//
//  LogInViewController.swift
//  BatStats
//
//  Created by Murphy Basil Ward on 11/13/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import UIKit
import CoreData

class LogInViewController: UIViewController {

    
    @IBOutlet weak var teamNameTextField: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    //if(you have text, image, and you pressed submit)
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func importImageButton(_ sender: Any) {
    }

    @IBAction func submitButton(_ sender: Any) {
     self.dismiss(animated: true, completion: nil)
     
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
