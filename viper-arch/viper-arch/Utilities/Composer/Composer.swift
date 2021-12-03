//
//  Composer.swift
//  viper-arch
//
//  Created by Matteo Fattori on 03/12/21.
//

import Foundation
import UIKit

class Composer {

    // MARK: Properties
    
    static let shared = Composer()

    // MARK: Modules

    var todoList: TodoListViewController!

    // Initialization

    private init() {
        self.todoList = self.setupTodoList()
    }
    
    private func setupTodoList() -> TodoListViewController {
        let interactor = TodoListInteractor()
        let router = TodoListRouter()
        let presenter = TodoListPresenter.init(router: router, interactor: interactor)
        let todoList = TodoListViewController.init(presenter: presenter)
        router.view = self.todoList
        presenter.view = self.todoList
        return todoList
    }
}
