//
//  DetailsVC.swift
//  Lakers2024
//
//  Created by Tahir Atakan Can on 26.10.2023.
//

import UIKit

class DetailsVC: UIViewController{

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedLakers : Lakers?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabel.text = selectedLakers?.name
        jobLabel.text = selectedLakers?.position
        imageView.image = selectedLakers?.image
        
        
    }

    
}
