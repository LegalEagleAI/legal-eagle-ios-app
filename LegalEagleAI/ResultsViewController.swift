//
//  ResultsViewController.swift
//  LegalEagleAI
//
//  Created by Sophia Huynh on 25/2/18.
//  Copyright © 2018 Sophia Huynh. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController, resultsProtocolDelegate {
    
    @IBOutlet weak var resultsHeading: UILabel!
    
    func getSearchQuery(searchString: String) {
        resultsHeading.text = searchString
        print(searchString)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        UIApplication.shared.statusBarStyle = .lightContent
        
    }
}


