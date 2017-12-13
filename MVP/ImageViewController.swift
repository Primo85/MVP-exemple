//
//  ImageViewController.swift
//  MVP
//
//  Created by Przemyslaw Biskup on 09/12/2017.
//  Copyright © 2017 Przemyslaw Biskup. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    let imageView = UIImageView()
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.frame = view.frame
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
    }
}
