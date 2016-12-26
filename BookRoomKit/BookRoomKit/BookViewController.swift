//
//  TestViewController.swift
//  BookRoomKit
//
//  Created by romance on 2016/12/26.
//  Copyright © 2016年 romance. All rights reserved.
//

import UIKit

class BookViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      let image = UIImage(named: "bookroom_down_bg_blue", in: bundle, compatibleWith: nil)
      let imageView = UIImageView(image: image)
      imageView.center = view.center
      view.addSubview(imageView)
      
      let label = UILabel()
      label.text = "hello word"
      label.sizeToFit()
      label.center = view.center
      label.font = UIFont(name: "Kreon-Bold", size: 17)
      view.addSubview(label)
    }
}
