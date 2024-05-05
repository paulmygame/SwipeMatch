//
//  ViewController.swift
//  SwipeMatch
//
//  Created by Paul Eduard Lapiceros on 4/11/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let topStackView = TopNavigationStackiew()
    let blueViews = UIView()
    let buttonStackView = HomeBottomControlsStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueViews.backgroundColor = .blue
        setupLayout()
    }
    
    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueViews, buttonStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    }
}

