//
//  TodoListPresenter.swift
//  viper-arch
//
//  Created by Matteo Fattori on 03/12/21.
//

import Foundation
import UIKit

class TodoListPresenter {
    
    var interactor: TodoListInteractor
    var router: TodoListRouter
    
    weak var view: UIViewController?
    
    init(router: TodoListRouter, interactor: TodoListInteractor) {
        self.interactor = interactor
        self.router = router
    }
}
