//
//  HomepageViewController.swift
//  LegalEagleAI
//
//  Created by Sophia Huynh on 24/2/18.
//  Copyright © 2018 Sophia Huynh. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let logoCell = tableView.dequeueReusableCell(withIdentifier: "logoCell")! //1.
        let searchBarCell = tableView.dequeueReusableCell(withIdentifier: "searchBarCell")! //1.
        let hotTopicCell = tableView.dequeueReusableCell(withIdentifier: "hotTopicCell")! //1.

        if indexPath.row == 0 {
            return logoCell
        } else if indexPath.row == 1 {
            return searchBarCell
        } else {
            return hotTopicCell
        }
        
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
