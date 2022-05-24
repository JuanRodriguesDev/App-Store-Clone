//
//  AppsHeadercell.swift
//  App Store
//
//  Created by Paulo Koga on 23/05/22.
//

import UIKit
import SDWebImage

class AppsHeaderCell: UICollectionViewCell {
    
    var appDestaque: AppDestaque? {
        didSet {
            if let appDestaque = appDestaque {
                empresaLabel.text = appDestaque.nome
                descricaoLabel.text = appDestaque.descricao
                imageImageView.sd_setImage(with: URL(string: appDestaque.imagemUrl), completed: nil)
            }
        }
    }
    
    let empresaLabel: UILabel = .textLabel(text: "App Empresa", fontSize: 12)
    let descricaoLabel: UILabel = .textLabel(text: "App descricao header", fontSize: 20, numberOfLines: 2)
    let imageImageView: UIImageView = .screenshotImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        empresaLabel.textColor = UIColor.azul
        
        let stackView = UIStackView(arrangedSubviews: [empresaLabel, descricaoLabel, imageImageView])
        stackView.axis = .vertical
        stackView.spacing = 8
        
        addSubview(stackView)
        stackView.preencherSuperview(padding: .init(top: 16, left: 0, bottom: 0, right: 0))
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
