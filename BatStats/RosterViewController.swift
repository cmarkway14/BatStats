//
//  RosterViewController.swift
//  BatStats
//
//  Created by Curtis Markway on 11/6/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    @IBOutlet weak var PositionPicker: UIPickerView!
    var PickerData = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Roster"
        // Do any additional setup after loading the view.
        
        //Implement all of task manager functionality here
        PickerData = ["Pitcher", "Catcher", "1B", "2B", "SS", "3B", "LF", "CF", "RF"]
      
        self.PositionPicker.delegate = self
        self.PositionPicker.dataSource = self
        
    }

    override func viewWillAppear(_ animated: Bool) {
        self.hidesBottomBarWhenPushed = false

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: Data Sources
  func numberOfComponents(in pickerView: UIPickerView) -> Int
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
