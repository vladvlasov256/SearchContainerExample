//
//  InputViewController.swift
//  SearchContainerExample
//
//  Created by Vladimir Vlasov on 07.12.21.
//

import UIKit

final class InputViewController: UIViewController {
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Type something"
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(textField)
    }
    
    override func viewWillLayoutSubviews() {
        textField.frame = CGRect(x: 760, y: 515, width: 400, height: 50)
    }
}
