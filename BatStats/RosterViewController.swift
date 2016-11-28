//
//  RosterViewController.swift
//  BatStats
//
//  Created by Curtis Markway on 11/6/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import UIKit
import CoreData

class RosterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate/*, UIPickerViewDataSource, UIPickerViewDelegate  */{

    
  //  This is the @IBOutlet weak var PositionPicker: UIPickerView!
    var PickerData = [String]() //Picker of strings
    var playerPosition = [String]() //players
    var numOfPosition = 0 //number of positions
    let myImagePicker = UIImagePickerController()
    @IBOutlet weak var positionTableView: UITableView!
    @IBOutlet weak var profilePicture: UIImageView!
    
    //Text fields
    @IBOutlet weak var playerFirstNameTextField: UITextField!
    @IBOutlet weak var playerLastNameTextField: UITextField!
    @IBOutlet weak var playerHeightTextField: UITextField!
    @IBOutlet weak var playerWeightTextField: UITextField!
    @IBOutlet weak var playerAgeTextField: UITextField!
    
    var player:Player?
    
    
    
  //import image
    @IBAction func importImage(_ sender: Any) {
        myImagePicker.allowsEditing = false
        myImagePicker.sourceType = .photoLibrary
        present(myImagePicker, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Roster"
    
        
        
        //Implement all of task manager functionality here
        PickerData = ["Pitcher", "Catcher", "1B", "2B", "SS", "3B", "LF", "CF", "RF"]
    
        
        //Matrix of All Positions
        positionTableView.delegate = self
        positionTableView.dataSource = self
        
        // Save button for confirming player
        let newPlayerButton = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(savePlayer))
        //Add save button to navigation menu
        self.navigationItem.rightBarButtonItem = newPlayerButton
        
        //Assign the image picker
         myImagePicker.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //What we do with the selected image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            profilePicture.contentMode = .scaleAspectFit
            profilePicture.image = pickedImage
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    //What happens if you don't pick anything
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    //Should be number of positions, could be adjusted to consider DH
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return PickerData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
       //Populate each cell with their appropriate name
        let cell: UITableViewCell! = self.positionTableView.dequeueReusableCell(withIdentifier: "cell")
        cell.textLabel!.text = self.PickerData[indexPath.row]
        
        //Print out cell
        return cell
    }

    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
       
      //let the cell = whatever position you picked at that spot
      let cell = positionTableView.cellForRow(at: indexPath as IndexPath)
        
      //If the cell has a checkmark already
      if (cell?.accessoryType == UITableViewCellAccessoryType.checkmark){
        
        //cancel the checkmark
        cell!.accessoryType = UITableViewCellAccessoryType.none;
        
        //index
        var i = 0
        
        //iterate through every element of this player's position array
        for p in playerPosition
        {
            //if there is a string(position) at that element in the array
            if p == cell?.textLabel?.text
            {
                playerPosition.remove(at: i) // remove it because we just checkmarked through it
            }
            i += 1 //keep stepping
        }
        
        
        }else{
        
        //This means that we need to add a checkmark and that element to the array
        cell!.accessoryType = UITableViewCellAccessoryType.checkmark;
        playerPosition.append((cell?.textLabel!.text)!)
    
        }
        
        //print(playerPosition)
        }
    
    func savePlayer(){
        let context = getContext()
        if player == nil{
            player = Player(context: context)
        }
        if let player = player{
            player.age = playerAgeTextField.text
            player.firstName = playerFirstNameTextField.text
            player.lastName = playerLastNameTextField.text
            
            do{
               try context.save()
            }catch let error as NSError{
                print("could not save")
            }
            print(player.firstName)
            print(player.lastName)
            print(player.age)
        }
        
        
    /*    //if you can construct a player from all of the data provided
        if let player : Player = NSEntityDescription.insertNewObject(forEntityName: "Player", into: AppDelegate.getContext()) as? Player{
            print("You have a player")
            
            //if let
            player.age = playerAgeTextField.text
            player.firstName = playerFirstNameTextField.text
            player.lastName = playerLastNameTextField.text
            
                print(player.firstName)
                print(player.lastName)
                print(player.age)
            
            let context = getContext()
            
            
        }
        
        */
        
        
        
    
        //if let player = player
         _ = navigationController?.popToRootViewController(animated: true)
    }
    
    func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    

}



       /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

