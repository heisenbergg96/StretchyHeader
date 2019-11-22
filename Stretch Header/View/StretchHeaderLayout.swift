//
//  StretchHeaderLayout.swift
//  Stretch Header
//
//  Created by Vikhyath on 25/01/19.
//  Copyright © 2019 Vikhyath. All rights reserved.
//

import UIKit

class StretchyHeaderLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        let attributes = super.layoutAttributesForElements(in: rect)
        attributes?.forEach({ (attribute) in
            
            if attribute.representedElementKind == UICollectionView.elementKindSectionHeader {
                
                guard let cv = collectionView else { return }
                
                let contentOffSetY = cv.contentOffset.y
                let width = cv.frame.width
                let height = max(attribute.frame.height - contentOffSetY, 20)
                UIView.animate(withDuration: 0.6, animations: {
                    
                    attribute.frame = CGRect(x: 0, y: contentOffSetY, width: width, height: height)
                })
            }
        })
        return attributes
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        
        return true
    }
    
    override var minimumInteritemSpacing: CGFloat {
        
        set {
            super.minimumLineSpacing = newValue
        }
        get {
            return minimumLineSpacing
        }
    }
}
