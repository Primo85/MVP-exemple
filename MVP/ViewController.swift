//
//  ViewController.swift
//  MVP
//
//  Created by Przemyslaw Biskup on 06/12/2017.
//  Copyright © 2017 Przemyslaw Biskup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func changeImage() {
        presenter.changeImage()
    }
    @IBAction func changeColor() {
        presenter.changeColor()
    }
    lazy var presenter: Presenter = {
        return Presenter(view: self)
    }()
}


// MARK: - extension ViewController: ViewProtocol
extension ViewController: ViewProtocol {
    
    func setImage(image: UIImage) {
        imageView.image = image
    }
    func setColor(color: UIColor) {
        imageView.backgroundColor = color
    }
}
