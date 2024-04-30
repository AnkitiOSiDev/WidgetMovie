//
//  ViewController.swift
//  WidgetMovie
//
//  Created by Ankit on 30/04/24.
//

import UIKit
import WidgetKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func updateMoviesDidClicked(_ sender: Any) {
        WidgetCenter.shared.reloadAllTimelines()
    }
    
}

