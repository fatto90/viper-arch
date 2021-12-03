//
//  TodoListViewController.swift
//  viper-arch
//
//  Created by Matteo Fattori on 03/12/21.
//

import UIKit

class TodoListViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var presenter : TodoListPresenter?
    
    init(presenter: TodoListPresenter?) {
        super.init(nibName: "TodoListViewController", bundle: nil)
        self.presenter = presenter
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = "Todo List"
    }


}

