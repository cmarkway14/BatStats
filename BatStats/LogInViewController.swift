//
//  LogInViewController.swift
//  BatStats
//
//  Created by Murphy Basil Ward on 11/13/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import UIKit
import CoreData

class LogInViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let myImagePicker = UIImagePickerController()
    
    @IBOutlet weak var teamNameTextField: UITextField?
    
    var myIdentifier = "stay"
    var teamImage : UIImage?
    //var myTeamName : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Assign the image picker
       
        
        
        myImagePicker.delegate = self
    
        // Do any additional setup after loading the view.
  
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func importImageButton(_ sender: Any) {
        
        myImagePicker.allowsEditing = false
        myImagePicker.sourceType = .photoLibrary
        present(myImagePicker, animated: true, completion: nil)
    }

    @IBAction func submitButton(_ sender: Any) {
   //Check to make sure you've added enough fields
          //if(you have text, image, and you pressed submit)
        //myIdentifier = "Home"
        
    }

    
    //What we do with the selected image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
          //teamImage?.contentMode = .scaleAspectFit
           teamImage = pickedImage
            print("hi")
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    //What happens if you don't pick anything
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
       
        if (segue.identifier == "goHome"){
            
            print(segue.destination)
            let dest = segue.destination
            let nav = dest.childViewControllers[0]
            if let nav = nav as? HomeViewController{
                
                
        
                  
                //if let image = teamImage?.image{
                    nav.teamImagePassed  = teamImage
                //}
                
                
                nav.teamNamePassed = teamNameTextField?.text
                    print("Did this")
            
            }

            }
           //print("HI")
            //}
            
            /*
              */
        
        }
        }
        

        

