//
//  Router.swift
//  MVP
//
//  Created by Przemyslaw Biskup on 09/12/2017.
//  Copyright © 2017 Przemyslaw Biskup. All rights reserved.
//

import UIKit

class Router {
    
    weak var source: ViewController?
    
    init(source: ViewController) {
        self.source = source
    }
    
    func changePresenter() {
        if source?.presenter is PresenterClass {
            source?.presenter = AnotherPresenterClass(view: source!)
        } else {
            source?.presenter = PresenterClass(view: source!)
        }
        
    }
    func showVCWithImage(image: UIImage) {
        let vc = ImageViewController()
        vc.image = image
        source?.show(vc, sender: nil)
    }
}
