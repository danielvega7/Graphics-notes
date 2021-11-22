//
//  ViewController2.swift
//  Graphics notes
//
//  Created by DANIEL VEGA on 11/22/21.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var plinkoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        plinkoButton.layer.cornerRadius = 25
        plinkoButton.clipsToBounds = true
        plinkoButton.layer.borderWidth = 3
        
    }
    

    

}
