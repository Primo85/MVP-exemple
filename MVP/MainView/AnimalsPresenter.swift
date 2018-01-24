//
//  Presenter.swift
//  MVP
//
//  Created by Przemyslaw Biskup on 06/12/2017.
//  Copyright © 2017 Przemyslaw Biskup. All rights reserved.
//

import UIKit

protocol AnimalsViewProtocol: class {
    func setImage(image: UIImage)
    func setColor(color: UIColor)
}

class AnimalsPresenter {
    
    init(view: AnimalsViewProtocol) {
        self.view = view
        setInitialView()
    }
    
    weak var view: AnimalsViewProtocol?
    
    func setInitialView() {
        changeImage()
        changeColor()
    }
    
    func changeImage() {
        // many many line of code
        // fetching images etc ....
        // CODE
        // CODE
        // CODE
        // CODE
        let image = images[flag]
        view?.setImage(image: image)
        flag = flag < images.count - 1 ? flag + 1 : 0
        // CODE
        // CODE
    }
    
    func changeColor() {
        // many many line of code
        // some calculations etc ....
        // CODE
        // CODE
        // CODE
        // CODE
        let color = colors[colorFlag]
        view?.setColor(color: color)
        colorFlag = colorFlag < colors.count - 1 ? colorFlag + 1 : 0
        // CODE
        // CODE
    }
    
    private var flag = 0
    private let images = [#imageLiteral(resourceName: "pa"),#imageLiteral(resourceName: "Be"),#imageLiteral(resourceName: "hawaii-2700190_1280"),#imageLiteral(resourceName: "Rufous-fronted-Bushtit-Bhutan-by-Markus-Lilje-2013")]
    
    private var colorFlag = 0
    private let colors: [UIColor] =
    [.red, .orange, .yellow, .green, .blue]
    
}
