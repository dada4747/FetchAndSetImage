//
//  ViewController.swift
//  FetchAndSetImage
//
//  Created by dada4747 on 08/31/2021.
//  Copyright (c) 2021 dada4747. All rights reserved.
//

import UIKit
import FetchAndSetImage

class ViewController: UIViewController {
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 24
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileImageView)
        someImageViewConstraints()
        profileImageView.loadImageUsingCacheWithUrlString("https://i.picsum.photos/id/744/200/200.jpg?hmac=8T0b9ya-1hs9mQn1Sosud4eldJZ6haGcupAiLTJHe2o")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func someImageViewConstraints() {
            profileImageView.widthAnchor.constraint(equalToConstant: 180).isActive = true
            profileImageView.heightAnchor.constraint(equalToConstant: 180).isActive = true
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            profileImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 28).isActive = true
        }
}

