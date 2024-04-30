//
//  HomeBottomControlsStackView.swift
//  SwipeMatch
//
//  Created by Paul Eduard Lapiceros on 4/11/24.
//

import UIKit

class HomeBottomControlsStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        // bottom row of buttons
        
        let buttonSubview = [UIColor.red, .green, .yellow, .blue, .purple].map { color  -> UIView in
            let v = UIView()
            v.backgroundColor = color
            return v
        }
        
        buttonSubview.forEach { (v) in
            addArrangedSubview(v)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(codeer: ) has not bee implemented")
    }

}
