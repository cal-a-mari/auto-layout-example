//
//  ManualLayoutViewController.swift
//  Test
//
//  Created by Mari Batilando on 2/20/22.
//

import Foundation
import UIKit

class ManualLayoutViewController: UIViewController {
  
  override func viewDidLoad() {
    let redView = UIView()
    redView.backgroundColor = .red
    redView.frame.size = CGSize(width: 100.0, height: 100.0)
    redView.center = CGPoint(x: view.bounds.width / 2.0,
                             y: view.bounds.height / 2.0)
    view.addSubview(redView)
    
    let blueView = UIView()
    blueView.backgroundColor = .blue
    blueView.frame = CGRect(x: redView.frame.origin.x,
                            y: redView.frame.origin.y + redView.frame.size.height + 50.0,
                            width: 100.0,
                            height: 100.0)
    view.addSubview(blueView)
  }
}
