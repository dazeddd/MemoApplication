//
//  MemoEditViewController.swift
//  MemoApplication
//
//  Created by 이준수 on 2020/02/12.
//  Copyright © 2020 이준수. All rights reserved.
//

import UIKit
import Then
import OpalImagePicker
import Photos

struct MemoData {
    var title: String
    var mainText: String
    var images: [UIImage]
}


class MemoEditViewController: UIViewController {
    
    
    
    
    lazy var userImageCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        
        collectionView.backgroundColor = .white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
        
        return collectionView
    }()
    
    let memoTitleField = UITextField(frame: .zero)
    let memoMainTextView = UITextView(frame: .zero)
    
    
    let addPhotoButton = UIButton()

//    lazy var imagePicker: UIImagePickerController = {
//
//        let imagePicker: UIImagePickerController = UIImagePickerController()
//        imagePicker.sourceType = .photoLibrary
//        imagePicker.delegate = self
//        imagePicker.allowsEditing = true
//
//        return imagePicker
//
//    }()
    
    
    
    
    @objc func tabButton() {
        
        let imagePicker = OpalImagePickerController()
        imagePicker.imagePickerDelegate = self
        imagePicker.maximumSelectionsAllowed = 5
        
        self.present(imagePicker, animated: true)
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(userImageCollectionView)
        userImageCollectionView.delegate = self
        userImageCollectionView.dataSource = self
        
        userImageCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        userImageCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        userImageCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        userImageCollectionView.heightAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        
        // addPhotoButton Targeting
        addPhotoButton.addTarget(self, action: #selector(tabButton), for: .touchUpInside)
        
        view.addSubview(memoTitleField)
        
        
        
        view.addSubview(memoMainTextView)
        
    }

}

extension MemoEditViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.data = self.data[indexPath.item]
        return cell
    }
}

extension MemoEditViewController: OpalImagePickerControllerDelegate {
    
    func imagePickerDidCancel(_ picker: OpalImagePickerController) {
        <#code#>
    }
    
    func imagePicker(_ picker: OpalImagePickerController, didFinishPickingAssets assets: [PHAsset]) {
        // save images, update UI
        
        
        
        // dis
        presentedViewController?.dismiss(animated: true, completion: nil)
    }
}



