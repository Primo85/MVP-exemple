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
    
    func showImageDetailViewController(image: UIImage?) {
        let detailVC = ImageDetailViewController()
        detailVC.imageView.image = image
        source?.navigationController?.present(detailVC, animated: true, completion: nil)
    }
}
