//
//  SearchViewController.swift
//  LegalEagleAI
//
//  Created by Sophia Huynh on 25/2/18.
//  Copyright © 2018 Sophia Huynh. All rights reserved.
//

import UIKit

protocol resultsProtocolDelegate {
    func getSearchQuery(searchString: String)
}

class SearchViewController: UIViewController {
    
    var delegate: resultsProtocolDelegate?

    @IBOutlet weak var searchTextView: UITextView!
    @IBOutlet weak var navBar: UINavigationItem!
    
    @IBAction func searchAction(_ sender: Any) {
        print("Delegate may be nil")
        if delegate != nil {
            if searchTextView.text != nil {
                print("delegate is not nil")
                let searchString = searchTextView.text
                    print(searchTextView.text)
                delegate?.getSearchQuery(searchString: searchString!)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        UIApplication.shared.statusBarStyle = .default
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "searchToResultsSegue" {
            delegate = self as! resultsProtocolDelegate
        }
    }
}
