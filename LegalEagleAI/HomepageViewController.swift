//
//  HomepageViewController.swift
//  LegalEagleAI
//
//  Created by Sophia Huynh on 24/2/18.
//  Copyright © 2018 Sophia Huynh. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        // Do any additional setup after loading the view.
    }
    
    func configView() {
        self.navigationController?.isNavigationBarHidden = true
        UIApplication.shared.statusBarStyle = .default
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
