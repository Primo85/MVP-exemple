//
//  ViewController.swift
//  MVP
//
//  Created by Przemyslaw Biskup on 06/12/2017.
//  Copyright © 2017 Przemyslaw Biskup. All rights reserved.
//

import UIKit

protocol Presenter: class {
    weak var view: ViewProtocol? { get set }
    func changeImage()
    func changeColor()
}

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func changeImage() {
        presenter.changeImage()
    }
    @IBAction func changeColor() {
        presenter.changeColor()
    }
    @IBAction func changePresenter() {
        router.showVCWithImage(image: #imageLiteral(resourceName: "Be"))
    }
    lazy var presenter: Presenter = {
        return PresenterClass(view: self)
    }()
    lazy var router: Router = {
        return Router(source: self)
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
