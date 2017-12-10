//
//  AnotherPresenterClass.swift
//  MVP
//
//  Created by Przemyslaw Biskup on 09/12/2017.
//  Copyright © 2017 Przemyslaw Biskup. All rights reserved.
//

import UIKit

class AnotherPresenterClass: Presenter {
    var view: ViewProtocol?
    
    func changeImage() {
        view?.setColor(color: .purple)
    }
    
    func changeColor() {
        view?.setColor(color: .blue)
    }
    
    init(view: ViewProtocol) {
        self.view = view
    }
    deinit {
        print("deinit AnotherPresenterClass")
    }
    
}
