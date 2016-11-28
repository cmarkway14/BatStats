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
    
    var players = [Player]()

    @IBOutlet weak var teamEmblem: UIImageView!
    @IBOutlet weak var teamName: UILabel!
    
    var teamImagePassed: UIImage?
    var teamNamePassed: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        //App name can be change later if needed
        title = "Home"
        
        let myPlayer = getPlayers()
        print(myPlayer.first?.firstName)
        
        if (teamNamePassed == nil)
        {
            teamNamePassed = "TEAM NAME"
            //Didn't get a name
        }
        
    if(teamImagePassed == nil){
        //teamImagePassed = #imageLiteral(resourceName: "Welsh.png")
            //didn't get an image
        
        print("JLKSJDFLKJSKLDFJSKLDJFSLKJFLKD")
    }
      //  print(teamImagePassed)
        teamEmblem.contentMode = .scaleAspectFit
        teamName.text = teamNamePassed
        teamEmblem.image = teamImagePassed
      
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>()
        let entityDesc = NSEntityDescription.entity(forEntityName: "Player", in: AppDelegate.getContext())
        fetchRequest.entity = entityDesc
        do{
            let result = try AppDelegate.getContext().execute(fetchRequest)
            print(result)
            print("this")
        }catch{
            print("we messed up")
        }
        
        
       /* let fetchRequest = NSFetchRequest<Player>(entityName: "Player")
        do{
            let playerFound = try AppDelegate.getContext().fetch(fetchRequest)
            print(playerFound)
            print("hi")
        }catch{
            print("something wrong happened")
        }*/

    
               // Do any additional setup after loading the view.
        

        
    }

    override func viewWillAppear(_ animated: Bool) {
        //super.viewWillAppear(false)
        
        /*
        if(logIn == false)
        {
            self.performSegue(withIdentifier: "createProfile", sender: self)
            logIn = true
            
        }*/
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    func getPlayers() -> [Player]{
        let fetchRequest = NSFetchRequest<Player>(entityName: "Player")
        do{
            let foundPlayer = try getContext().fetch(fetchRequest)
                return foundPlayer
        }catch{
            print("we messed this up")
        }
        return [Player]()
    }
    
    func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
  /*  func getContext() -> NSManagedObjectContext {
        let database = UIApplication.shared.delegate as! DatabaseController
        return database.persistentContainer.viewContext
    }
*/
}
