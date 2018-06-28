//
//  MainController.swift
//  testing
//
//  Created by Kenji Mah on 6/26/18.
//  Copyright © 2018 Kenji Mah. All rights reserved.
//

import UIKit
import CoreData

class MainController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    // Init id of cells
    let cellId = "myCell"
    let headerId = "myHeader"
    let footerId = "myFooter"
    
    var postHaveImg :[Int] = [1, 0, 1, 1]
    var postText :[String] = ["CLICKING ON GRID POSTS", "Ok i see", "JKKDSFSDFKSDFSDF", "GANG"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .black
        // Registering each cell
        collectionView?.register(displayCollectionViewCell.self, forCellWithReuseIdentifier: cellId) //Posts
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId) // Header unknown use
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerId) // Footer unknown use
    }
    
    // Number of posts
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    // Creating post cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! displayCollectionViewCell
        // Import post details
        cell.profileImage.image = #imageLiteral(resourceName: "sick")
        cell.userRealName.text = "To Do: How we upload images, post image and caption, auto resize cell, infinite scroll"
        if(postHaveImg[indexPath.row] == 1) {
            cell.postImage.image = #imageLiteral(resourceName: "sick")
            /*
            cell.postImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
            cell.postImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
             Could be used for different dimensioned images
             */
        }
        cell.postCaption.text = postText[indexPath.row]
        return cell
    }
    
    // Size of post
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 500)
    }
    
    // Creating header or footer cell
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionElementKindSectionHeader { // Checks which one to create
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
            header.backgroundColor = .yellow
            return header
        } else {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerId, for: indexPath)
            footer.backgroundColor = .yellow
            return footer
        }
    }
    
    // Sizing of both header and footer
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    // Creating post object
    /*
    private func createPost(profile: UIImage, usersName: String, postImage: UIImage, postCaption: String, context: NSManagedObjectContext){
        let post = NSEntityDescription.insertNewObject(forEntityName: "Post", into: context) as! Post
        
        post.profile = profile
        post.userRealName = usersName
        post.postImage = postImage
        post.postCaption = postCaption
    }*/
}
