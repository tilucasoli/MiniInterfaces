//
//  MomentosController.swift
//  MiniInterfaces
//
//  Created by Elias Ferreira on 29/04/20.
//  Copyright © 2020 Elias Ferreira. All rights reserved.
//

import UIKit

class MomentosController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMomentoTapped(_ sender: UIButton) {
        
        if let addMomentoView = storyboard?.instantiateViewController(withIdentifier: "AddMomentoController") {
            self.present(addMomentoView, animated: true, completion: nil)
        }
        
    }

}
