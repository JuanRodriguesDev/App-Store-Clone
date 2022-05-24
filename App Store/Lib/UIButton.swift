//
//  UIButton.swift
//  App Store
//
//  Created by Escritorio Axxis on 16/05/22.
//

import UIKit

extension UIButton {
    
    static func obterButton () -> UIButton {
        let button = UIButton(type: .system)
        
        button.setTitle("OBTER", for: .normal)
        button.setTitleColor(UIColor.azul, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        
        button.size(size: .init(width: 80, height: 32))
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        
        return button
    }
}
