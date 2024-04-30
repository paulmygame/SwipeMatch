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
        
        let subviews = [UIImage(named: "btn_refresh_img"), UIImage(named: "btn_close_img"), UIImage(named: "btn_star_img"), UIImage(named: "btn_heart_img"), UIImage(named: "btn_lightning_img")].map { (img)  -> UIView in
            let button = UIButton(type: .system)
            button.setImage(img?.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
        
        subviews.forEach { (v) in
            addArrangedSubview(v)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(codeer: ) has not bee implemented")
    }

}
