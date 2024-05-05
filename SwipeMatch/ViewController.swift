//
//  ViewController.swift
//  SwipeMatch
//
//  Created by Paul Eduard Lapiceros on 4/11/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let topStackView = TopNavigationStackiew()
        
        let blueViews = UIView()
        blueViews.backgroundColor = .blue
        
        let buttonStackView = HomeBottomControlsStackView()
        
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueViews, buttonStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    }
}

