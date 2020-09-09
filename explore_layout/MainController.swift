//
//  MainController.swift
//  explore_layout
//
//  Created by cartenz on 09/09/20.
//  Copyright © 2020 yukngoding. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var btnImageView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainTitle.text="Home Screen"
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickImageView(_ sender: Any) {
        let intent = MyImageController(nibName: "MyImageController", bundle: nil)
        self.navigationController?.pushViewController(intent, animated: true)
    }
        
    @IBAction func onClickAlert(_ sender: Any) {
        let intent = MyAlertController(nibName: "MyAlertController", bundle: nil)
        self.navigationController?.pushViewController(intent, animated: true)
    }
    
    @IBAction func onClickTextField(_ sender: Any) {
        let intent = MyTextFieldController(nibName: "MyTextFieldController", bundle: nil)
        self.navigationController?.pushViewController(intent, animated: true)
    }

    @IBAction func onClickTableViewCustomCell(_ sender: Any) {
        let intent = TableViewController(nibName: "TableViewController", bundle: nil)
        self.navigationController?.pushViewController(intent, animated: true)
    }


}
