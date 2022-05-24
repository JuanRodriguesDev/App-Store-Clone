//
//  AppsHeader.swift
//  App Store
//
//  Created by Paulo Koga on 23/05/22.
//

import UIKit

class AppsHeader: UICollectionReusableView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    let cellId = "cellId"
    
    var colletionView: UICollectionView!
    
    var appsEmDestaque: [AppDestaque] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        let layout = UICollectionViewFlowLayout()
 let layout = SnappingLayout()
        layout.scrollDirection = .horizontal
        
        colletionView = UICollectionView(frame: bounds, collectionViewLayout: layout)
        colletionView.backgroundColor = .white
        colletionView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        colletionView.delegate = self
        colletionView.dataSource = self
        colletionView.decelerationRate = .fast
        colletionView.showsHorizontalScrollIndicator = false
        colletionView.register(AppsHeaderCell.self, forCellWithReuseIdentifier: cellId)
        
        addSubview(colletionView)
        colletionView.preencherSuperview()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}

extension AppsHeader {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.appsEmDestaque.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! AppsHeaderCell
        cell.appDestaque = self.appsEmDestaque[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: bounds.width - 40, height: bounds.height)
    }
}
