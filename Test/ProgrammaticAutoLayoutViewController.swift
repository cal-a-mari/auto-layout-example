//
//  ProgrammaticAutoLayoutViewController.swift
//  Test
//
//  Created by Mari Batilando on 2/20/22.
//

import UIKit

class ProgrammaticAutoLayoutViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let redView = UIView()
    redView.backgroundColor = .red
    redView.translatesAutoresizingMaskIntoConstraints = false
    let redViewConstraints = [redView.widthAnchor.constraint(equalToConstant: 100.0),
                              redView.heightAnchor.constraint(equalToConstant: 100.0),
                              redView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                              redView.centerYAnchor.constraint(equalTo: view.centerYAnchor)]
    view.addSubview(redView)
    NSLayoutConstraint.activate(redViewConstraints)
    
    let blueView = UIView()
    blueView.backgroundColor = .blue
    blueView.translatesAutoresizingMaskIntoConstraints = false
    let blueViewConstraints = [blueView.widthAnchor.constraint(equalToConstant: 100.0),
                               blueView.heightAnchor.constraint(equalToConstant: 100.0),
                               blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                               blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 50.0)]
    view.addSubview(blueView)
    NSLayoutConstraint.activate(blueViewConstraints)
  }
}
