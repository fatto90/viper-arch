//
//  Container.swift
//  viper-arch
//
//  Created by Matteo Fattori on 03/12/21.
//

import Foundation
import UIKit

class Container {

    // MARK: Properties
    
    static let shared = Container()

    let navigationController: UINavigationController

    // Initialization

    private init() {
        self.navigationController = UINavigationController.init(rootViewController: Composer.shared.todoList)
        self.navigationController.setNavigationBarHidden(true, animated: true)
        self.navigationController.navigationBar.isHidden = true
        self.navigationController.isNavigationBarHidden = true
    }
}
