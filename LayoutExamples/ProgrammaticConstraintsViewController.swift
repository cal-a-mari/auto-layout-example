//
//  ProgrammaticConstraintsViewController.swift
//  LayoutExamples
//
//  Created by Mari Batilando on 2/27/22.
//

import UIKit

class ProgrammaticConstraintsViewController: UIViewController {
    
    private let margin = 12.0
    private let subviewSize = CGSize(width: 50.0, height: 50.0)

    override func viewDidLoad() {
        super.viewDidLoad()

        let redView = UIView()
        redView.backgroundColor = .red
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
        let redViewHeightConstraint = redView.heightAnchor.constraint(equalToConstant: subviewSize.height)
        let redViewWidthConstraint = redView.widthAnchor.constraint(equalToConstant: subviewSize.width)
        let redViewLeadingConstraint = redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                                                                        constant: margin)
        let redViewTopConstraint = redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                                                constant: margin)
        NSLayoutConstraint.activate([redViewHeightConstraint, redViewWidthConstraint, redViewLeadingConstraint, redViewTopConstraint])
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
        let blueViewHeightConstraint = blueView.heightAnchor.constraint(equalToConstant: subviewSize.height)
        let blueViewWidthConstraint = blueView.widthAnchor.constraint(equalToConstant: subviewSize.width)
        let blueViewXAxisConstraint = blueView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        let blueViewYAxisConstraint = blueView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        NSLayoutConstraint.activate([blueViewHeightConstraint, blueViewWidthConstraint, blueViewXAxisConstraint, blueViewYAxisConstraint])
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenView)
        let greenViewHeightConstraint = greenView.heightAnchor.constraint(equalToConstant: subviewSize.height)
        let greenViewWidthConstraint = greenView.widthAnchor.constraint(equalToConstant: subviewSize.width)
        let greenViewTrailingConstraint = greenView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        let greenViewBottomConstraint = greenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -margin)
        NSLayoutConstraint.activate([greenViewHeightConstraint, greenViewWidthConstraint, greenViewTrailingConstraint, greenViewBottomConstraint])
    }
}
