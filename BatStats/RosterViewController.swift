//
//  RosterViewController.swift
//  BatStats
//
//  Created by Curtis Markway on 11/6/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate/*, UIPickerViewDataSource, UIPickerViewDelegate  */{

    
  //  This is the @IBOutlet weak var PositionPicker: UIPickerView!
    var PickerData = [String]()
    var playerPosition = [String]()
    var numOfPosition = 0
    
    
    @IBOutlet weak var positionTableView: UITableView!
    
    @IBOutlet weak var profilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Roster"
        // Do any additional setup after loading the view.
        
        //Implement all of task manager functionality here
        PickerData = ["Pitcher", "Catcher", "1B", "2B", "SS", "3B", "LF", "CF", "RF"]
      
       // self.PositionPicker.delegate = self
        //self.PositionPicker.dataSource = self
        positionTableView.delegate = self
        positionTableView.dataSource = self
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        let newPlayerButton = UIBarButtonItem(title: "Save", style: .plain, target: self, action: nil)
        
        self.navigationItem.rightBarButtonItem = newPlayerButton
        
    }

  //  override func viewWillAppear(_ animated: Bool) {
    //    self.hidesBottomBarWhenPushed = false

    //}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: Data Sources
  /*func numberOfComponents(in pickerView: UIPickerView) -> Int
  {
    return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return PickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return PickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(PickerData[row])
    }
    JUST ADD THE PICKER BACK IN
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //print(PickerData.count)
        return PickerData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell! = self.positionTableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell.textLabel!.text = self.PickerData[indexPath.row]
        
        return cell
    }

    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let cell = positionTableView.cellForRow(at: indexPath as IndexPath)
        
      if (cell?.accessoryType == UITableViewCellAccessoryType.checkmark){
            
        cell!.accessoryType = UITableViewCellAccessoryType.none;
        
        
        var i = 0
       
        for p in playerPosition
        {
            if p == cell?.textLabel?.text
            {
                playerPosition.remove(at: i)
            }
            i += 1
        }
        
            
        }else{
            
            cell!.accessoryType = UITableViewCellAccessoryType.checkmark;
        //print(numOfPosition)
        playerPosition.append((cell?.textLabel!.text)!)
    
        }
        
        print(playerPosition)
        }
    
  
    }
    
func savePlayer(){
    
}


       /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

