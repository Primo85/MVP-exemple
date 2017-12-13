//
//  Router.swift
//  MVP
//
//  Created by Przemyslaw Biskup on 09/12/2017.
//  Copyright © 2017 Przemyslaw Biskup. All rights reserved.
//

import UIKit

class AnimalsRouter {
    
    weak var source: AnimalsViewController?
    
    init(source: AnimalsViewController) {
        self.source = source
    }
    
    func changePresenter() {
        if source?.presenter is ColorPresenterClass {
            source?.presenter = BlackAndWhitePresenterClass(view: source!)
        } else {
            source?.presenter = ColorPresenterClass(view: source!)
        }
        
    }
    func showVCWithImage(image: UIImage) {
        let vc = ImageViewController()
        vc.image = source?.imageView.image
        vc.modalTransitionStyle = .crossDissolve
        source?.navigationController?.show(vc, sender: nil)
    }
}
