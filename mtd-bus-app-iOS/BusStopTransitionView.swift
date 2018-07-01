//
//  BusStopTransitionView.swift
//  mtd-bus-app-iOS
//
//  Created by Pradeep Kumar on 7/1/18.
//  Copyright © 2018 Pradeep Kumar. All rights reserved.
//

import UIKit
import Material

class BusStopTransitionView: UIViewController {
    fileprivate var menuButton: IconButton!

    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Color.green.base
        
        prepareToolbar()
    }
}

extension BusStopTransitionView {
    fileprivate func prepareMenuButton() {
        menuButton = IconButton(image: Icon.cm.menu)
        //menuButton.addTarget(self, action: #selector(handleMenuButton), for: .touchUpInside)
    }
    
    fileprivate func prepareToolbar() {
        guard let tc = toolbarController else {
            return
        }

        tc.toolbar.title = "Stop: "
        tc.toolbar.detail = "___ Miles"
    }
}