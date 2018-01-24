//
//  ViewController.swift
//  MVP
//
//  Created by Przemyslaw Biskup on 06/12/2017.
//  Copyright © 2017 Przemyslaw Biskup. All rights reserved.
//

import UIKit

final class AnimalsViewController: UIViewController {
    
    // tutaj zawsze presenter i router
    lazy var presenter: AnimalsPresenter = {
        return AnimalsPresenter(view: self)
    }()
    lazy var router: AnimalsRouter = {
        return AnimalsRouter(source: self)
    }()
    
    // tutaj wszystkie outlety ze storybord'ow i xib'ow
    @IBOutlet weak var imageView: UIImageView!
    
    // tutaj lifecycle ....viewDidLoad WillAppear itd
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // tutaj wszystkie @IBActions
    @IBAction func changeImage() {
        presenter.changeImage()
    }
    @IBAction func changeColor() {
        presenter.changeColor()
    }
    @IBAction func showDetail() {
        let image = imageView.image
        router.showImageDetailViewController(image: image)
    }
    
    
    // i koniec w viewControllerze powinny byc tylko actions outlets lifecycle i router/presenter
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
