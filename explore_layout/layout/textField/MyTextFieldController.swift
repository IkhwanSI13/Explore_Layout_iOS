//
//  MyTextFieldController.swift
//  explore_layout
//
//  Created by cartenz on 09/09/20.
//  Copyright © 2020 yukngoding. All rights reserved.
//

import UIKit

class MyTextFieldController: UIViewController {

    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var textFieldTwo: UITextField!
    @IBOutlet weak var labelResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        labelResult.text = "Hasil";
    }

    @IBAction func onCount(_ sender: Any) {
        if let h = Double(textFieldOne.text ?? "0"), let w = Double(textFieldTwo.text ?? "0"){
            labelResult.text = String(h * w)
        }else{
            labelResult.text = "Hasil Tidak Valid"
        }
    }
    
    @IBAction func onClickAnother(_ sender: Any) {
        let intent = AnotherTextFieldController(nibName: "AnotherTextFieldController", bundle: nil)
        self.navigationController?.pushViewController(intent, animated: true)
    }

}
