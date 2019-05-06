//
//  ViewController.swift
//  launchpad 2.0
//
//  Created by Cheuk Lun Ko on 3/3/2019.
//  Copyright © 2019 Cheuk Lun Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func pushCamVC(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "scan") as? ScanViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    @IBAction func pushStrokeVC(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "stroke") as? StrokeViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func pushTableVC(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "list") as? ListTableViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
