//
//  MyImageController.swift
//  explore_layout
//
//  Created by cartenz on 09/09/20.
//  Copyright © 2020 yukngoding. All rights reserved.
//

import UIKit

class MyImageController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView2.image = UIImage(named: "ic_yukngoding")
        
        let url = URL(string: "https://ikhwankoto.com/img/pp.jpg")
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
            DispatchQueue.main.async {
                self.imageView3.image = UIImage(data: data!)
            }
        }
    }

}
