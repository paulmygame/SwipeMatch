//
//  TopNavigationStackiew.swift
//  SwipeMatch
//
//  Created by Paul Eduard Lapiceros on 4/30/24.
//

import UIKit

class TopNavigationStackiew: UIStackView {

    let settingButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let fireImageView = UIImageView(image: UIImage(named: "btn_fire_img"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        fireImageView.contentMode = .scaleAspectFit
        settingButton.setImage(UIImage(named: "btn_prof_img")?.withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(UIImage(named: "btn_chat_img")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        [settingButton, UIView(), fireImageView, UIView(), messageButton].forEach { (v) in
            addArrangedSubview(v)
        }
        
        distribution = .equalCentering
        
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    required init(coder: NSCoder) {
        fatalError( )
    }
    
}
