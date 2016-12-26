//
//  BookRoomManager.swift
//  BookRoomKit
//
//  Created by romance on 2016/12/22.
//  Copyright © 2016年 romance. All rights reserved.
//

import UIKit

private let shared = BookRoomManager()
let bundle = Bundle(identifier: "xcqromance.BookRoomKit")

public class BookRoomManager: NSObject {
  /// 单利
  public class var manager: BookRoomManager {
    FontExt.loadMyCustomFont("Kreon-Bold", size: 17)
    return shared
  }
  
  public func test() {
    print("hello bookroom")
  }

  public func showBookHomeVC(viewController: UIViewController) {
    let sb = UIStoryboard(name: "BookHome", bundle: bundle)
    let vc = sb.instantiateViewController(withIdentifier: "BookViewController") as! BookViewController
    viewController.navigationController?.pushViewController(vc, animated: true)
  }
  
}
