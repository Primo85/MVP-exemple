//
//  ViewController.swift
//  MVP
//
//  Created by Przemyslaw Biskup on 06/12/2017.
//  Copyright © 2017 Przemyslaw Biskup. All rights reserved.
//

import UIKit

// MARK: - Protocols
protocol AnimalsPresenterProtocol: class {
    weak var view: AnimalsViewProtocol? { get set }
    func setInitialView()
    func changeImage()
    func changeColor()
}
protocol AnimalsViewProtocol: class {
    func setImage(image: UIImage)
    func setColor(color: UIColor)
}


// MARK: - ViewController: UIViewController
class AnimalsViewController: UIViewController {
    
    lazy var presenter: AnimalsPresenterProtocol = {
        return ColorPresenterClass(view: self)
    }()
    lazy var router: AnimalsRouter = {
        return AnimalsRouter(source: self)
    }()
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func changeImage() {
        presenter.changeImage()
    }
    @IBAction func changeColor() {
        presenter.changeColor()
    }
    @IBAction func changePresenter() {
        router.changePresenter()
    }
    @IBAction func showDetail() {
        router.showVCWithImage(image: #imageLiteral(resourceName: "Be"))
    }
    
    
    
    
}


// MARK: - extension ViewController: ViewProtocol
extension AnimalsViewController: AnimalsViewProtocol {
    
    func setImage(image: UIImage) {
        imageView.image = image
    }
    func setColor(color: UIColor) {
        imageView.backgroundColor = color
    }
}
