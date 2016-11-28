//
//  HomeViewController.swift
//  BatStats
//
//  Created by Curtis Markway on 11/6/16.
//  Copyright © 2016 Curtis Markway. All rights reserved.
//

import UIKit
import CoreData

class HomeViewController: UIViewController {

     var logIn = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //App name can be change later if needed
        title = "Home"

        // Do any additional setup after loading the view.
    
        let teamName:String = String(describing: Team.self)
        
        let player:Player = NSEntityDescription.insertNewObject(forEntityName: "Player", into: DatabaseController.getContext()) as! Player
        player.age = 18
        player.firstName = "John"
        player.lastName = "Smith"
        player.atBats = 100
        player.strikeOuts = 37
        player.height = "6'04"
        player.earnedRunAvg = 0.00
        player.rbi = 30
        player.stealAttempts = 5
        
        let team:Team = NSEntityDescription.insertNewObject(forEntityName: teamName, into: DatabaseController.getContext()) as! Team
        
        team.teamName = "Bulls"
        player.team = team
        
        
        DatabaseController.saveContext()
        
        let fetchRequest:NSFetchRequest<Player> = Player.fetchRequest()
        
        do{
            let searchResults = try DatabaseController.getContext().fetch(fetchRequest)
            print("Number of result: \(searchResults.count)")
            
            for result in searchResults as [Player]{
                print("\(result.firstName!) \(result.lastName!)")
            }

        }
        catch{
            print("error: \(error)")
        }

        
    }

    override func viewDidAppear(_ animated: Bool) {
        //super.viewWillAppear(false)
        if(logIn == false)
        {
            self.performSegue(withIdentifier: "createProfile", sender: self)
            logIn = true
            //print("hi")
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
