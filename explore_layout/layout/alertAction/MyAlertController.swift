//
//  MyAlertController.swift
//  explore_layout
//
//  Created by cartenz on 09/09/20.
//  Copyright © 2020 yukngoding. All rights reserved.
//

import UIKit

class MyAlertController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onYesNoClick(_ sender: Any) {
        // Membuat button aksi untuk alert.
        let defaultAction = UIAlertAction(title: "Agree",
            style: .default) { (action) in
            // Merespon pengguna ketika memilih action ini.
                print("YukNgoding.id Agree")
        }
           
        let cancelAction = UIAlertAction(title: "Disagree",
            style: .cancel) { (action) in
            // Merespon pengguna ketika memilih action ini.
            print("YukNgoding.id Disagree")
        }
         
        // Membuat dan mengatur alert controller.
        let alert = UIAlertController(title: "Terms and Conditions",
            message: "Click Agree to accept the terms and conditions.",
            preferredStyle: .alert)
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true) {
            // Alert akan muncul
        }
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
