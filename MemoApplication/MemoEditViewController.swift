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



class MemoEditViewController: UIViewController {
    
    // UI
    
    
    
    let userImageCollectionView = UserImageCollectionView()
    let memoTitleField = MemoTitleField()
    let memoMainTextView = MemoMainTextView()
    
    
    let addPhotoButton = UIButton()
    
    
    @objc func presentPhotoPicker() {
        
        let imagePicker = OpalImagePickerController()
        imagePicker.imagePickerDelegate = self
        imagePicker.maximumSelectionsAllowed = 5
        
        self.present(imagePicker, animated: true)
    }
    
    
    // MARK: Init
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    

    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(userImageCollectionView)
        
        userImageCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        userImageCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        userImageCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        userImageCollectionView.heightAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        
        view.addSubview(addPhotoButton)
        addPhotoButton.addTarget(self, action: #selector(presentPhotoPicker), for: .touchUpInside)
        
        
        view.addSubview(memoTitleField)
        
        
        
        view.addSubview(memoMainTextView)
        
    }

}


extension MemoEditViewController: OpalImagePickerControllerDelegate {
    
    func imagePickerDidCancel(_ picker: OpalImagePickerController) {
        print("picker was cancelled")
    }
    
    func imagePicker(_ picker: OpalImagePickerController, didFinishPickingAssets assets: [PHAsset]) {
        // save images, update UI
        
        
        
        // dis
        presentedViewController?.dismiss(animated: true, completion: nil)
    }
}



