//
//  HeaderView.swift
//  Stretch Header
//
//  Created by Vikhyath on 24/01/19.
//  Copyright © 2019 Vikhyath. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let imageView: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "Header"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleToFill
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vikhyath"
        label.font = .boldSystemFont(ofSize: 50)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        self.addSubview(imageView)
        imageView.addSubview(nameLabel)
        setupAnchors()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupAnchors() {
        
//        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
//        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
//        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        imageView.fillSuperView()
        nameLabel.anchor(top: nil, bottom: imageView.bottomAnchor, leading: imageView.leadingAnchor, trailing: nil, padding: .init(top: 0, left: 20, bottom: 20, right: 0))
        
        nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 20).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -20).isActive = true
        //nameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
