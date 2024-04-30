//
//  ViewController.swift
//  SwipeMatch
//
//  Created by Paul Eduard Lapiceros on 4/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subviews =  [UIColor.gray, .darkGray, .black].map { color -> UIView in
            let v = UIView()
            v.backgroundColor = color
            return v
        }

        let topStackView = UIStackView(arrangedSubviews: subviews)
        topStackView.distribution = .fillEqually
        topStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        let buttonStackView = HomeBottomControlsStackView()
        
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.frame = .init(x: 0, y: 0, width: 300, height: 200)
        overallStackView.fillSuperview()
    }
}

