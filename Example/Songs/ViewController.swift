//
//  ViewController.swift
//  Songs
//
//  Created by ruanvictorreis on 08/11/2020.
//  Copyright (c) 2020 ruanvictorreis. All rights reserved.
//

import UIKit
import Songs

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func proceedToSongsModule(_ sender: Any) {
        guard let viewController = SongsBuilder().build() else { return }
        navigationController?.pushViewController(viewController, animated: true)
    }
}

