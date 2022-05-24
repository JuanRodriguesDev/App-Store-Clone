//
//  UIImageView.swift
//  App Store
//
//  Created by Escritorio Axxis on 16/05/22.
//

import UIKit

extension UIImageView {
    
    static func iconeImageView (width: CGFloat = 64, heigth: CGFloat = 64) -> UIImageView {
        let imagem = UIImageView()
        
        imagem.size(size: .init(width: width, height: heigth))
        imagem.backgroundColor = .purple
        imagem.layer.borderWidth = 0.5
        imagem.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        imagem.layer.cornerRadius = 12
        imagem.clipsToBounds = true
        
        
        return imagem
    }
    
    static func screenshotImageView () -> UIImageView{
        let imagem = UIImageView()
        
        imagem.backgroundColor = .purple
        imagem.layer.cornerRadius = 12
        imagem.layer.borderWidth = 0.5
        imagem.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        imagem.clipsToBounds = true
        imagem.contentMode = .scaleAspectFill
        
        return imagem
        
    }
    
}
