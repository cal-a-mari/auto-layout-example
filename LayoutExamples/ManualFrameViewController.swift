//
//  ManualFrameViewController.swift
//  LayoutExamples
//
//  Created by Mari Batilando on 2/27/22.
//

import UIKit

class ManualFrameViewController: UIViewController {
    
    private let margin = 12.0
    private let subviewSize = CGSize(width: 50.0, height: 50.0)
    private let redView = UIView()
    private let blueView = UIView()
    private let greenView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(redView)
        view.addSubview(blueView)
        view.addSubview(greenView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        redView.backgroundColor = .red
        redView.frame = CGRect(x: view.safeAreaInsets.left + margin,
                               y: view.safeAreaInsets.top + margin,
                               width: subviewSize.width,
                               height: subviewSize.height)
        
        blueView.backgroundColor = .blue
        blueView.frame.size = subviewSize
        blueView.center = CGPoint(x: view.center.x,
                                  y: view.center.y + view.safeAreaInsets.top / 2.0)

        greenView.backgroundColor = .green
        greenView.frame = CGRect(x: view.bounds.size.width - view.safeAreaInsets.right - margin - subviewSize.width,
                                 y: view.bounds.size.height - view.safeAreaInsets.bottom - margin - subviewSize.height,
                                 width: subviewSize.width,
                                 height: subviewSize.height)
    }
}
