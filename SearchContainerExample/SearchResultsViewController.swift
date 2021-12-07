//
//  SearchResultsViewController.swift
//  SearchContainerExample
//
//  Created by Vladimir Vlasov on 07.12.21.
//

import UIKit

final class SearchResultsViewController: UIViewController {
    private lazy var inputButton: UIButton = {
        let button = UIButton()
        button.setTitle("Input", for: .normal)
        button.setTitleColor(.magenta, for: .focused)
        button.addTarget(self, action: #selector(openInputController), for: .primaryActionTriggered)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(inputButton)
    }
    
    override func viewWillLayoutSubviews() {
        inputButton.frame = CGRect(x: 860, y: 360, width: 200, height: 50)
    }
    
    @objc private func openInputController() {
        present(InputViewController(), animated: true)
    }
}
