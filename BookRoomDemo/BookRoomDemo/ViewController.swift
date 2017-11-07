//
//  ViewController.swift
//  BookRoomDemo
//
//  Created by romance on 2016/11/10.
//  Copyright © 2016年 Romance. All rights reserved.
//

import UIKit
import BookRoomKit
import ZipArchive 

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
//    BookRoomManager.manager.test()
  }
  @IBAction func shwoDetail() {
    
    BookRoomManager.manager.showBookHomeVC(viewController: self)
  }
}

