//
//  displayCollectionViewCell.swift
//  testing
//
//  Created by Kenji Mah on 6/25/18.
//  Copyright © 2018 Kenji Mah. All rights reserved.
//

import UIKit

class displayCollectionViewCell: UICollectionViewCell {
    
    var userRealName: UILabel!
    var profileImage: UIImageView!
    var postImage: UIImageView!
    var postCaption: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit(){
        self.contentView.backgroundColor = .white
        // Image hard coded
        // How are we loading images, assuming url, make method to get data from url? unsure how to display image from url
        profileImage = UIImageView()
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(profileImage)
        profileImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        profileImage.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        
        // UserName
        userRealName = UILabel(frame: contentView.frame)
        userRealName.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(userRealName)
        userRealName.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        userRealName.leftAnchor.constraint(equalTo: profileImage.rightAnchor).isActive = true
        userRealName.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        userRealName.font = UIFont(name: userRealName.font.fontName, size: 12)
        
        // Image Post
        postImage = UIImageView()
        postImage.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(postImage)
        postImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        postImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        postImage.widthAnchor.constraint(equalToConstant: 350).isActive = true
        postImage.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        
        // Text Caption
        postCaption = UILabel(frame: contentView.frame)
        postCaption.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(postCaption)
        postCaption.topAnchor.constraint(equalTo: postImage.bottomAnchor).isActive = true
        postCaption.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        postCaption.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        postCaption.font = UIFont(name: postCaption.font.fontName, size: 20)
    }
    
}
