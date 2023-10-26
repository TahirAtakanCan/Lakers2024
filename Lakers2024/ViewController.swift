//
//  ViewController.swift
//  Lakers2024
//
//  Created by Tahir Atakan Can on 26.10.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myLakers = [Lakers]()
    // her zaman ulaşmak için
    var chosenPlayer : Lakers?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let LeBron = Lakers(playerName: "LeBron", playerPosition: "PF", lakersImage: UIImage(named :"lebronjames")!)
        
        let Davis = Lakers(playerName: "Davis", playerPosition: "C", lakersImage: UIImage(named :"Davis")!)
        
        let Reaves = Lakers(playerName: "Reaves", playerPosition: "G", lakersImage: UIImage(named :"austinreaves")!)
        
        let Rui = Lakers(playerName: "Rui", playerPosition: "SF", lakersImage: UIImage(named :"rui")!)
        
        let Dlo = Lakers(playerName: "Russell", playerPosition: "SG", lakersImage: UIImage(named :"dlo")!)
        
        // yukarıda tanımladığım dizime ekleme yapıyorum
        myLakers.append(LeBron)
        myLakers.append(Davis)
        myLakers.append(Reaves)
        myLakers.append(Rui)
        myLakers.append(Dlo)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myLakers.count // bu dizide kaç tane varsa onu göster.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        // hücrelerde isimlerimi yazdırıyorum
        cell.textLabel?.text = myLakers[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenPlayer = myLakers[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLakers = chosenPlayer
        }
    }
    
    


}

