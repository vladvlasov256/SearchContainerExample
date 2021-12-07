//
//  RootViewController.swift
//  SearchContainerExample
//
//  Created by Vladimir Vlasov on 07.12.21.
//

import UIKit

final class RootViewController: UIViewController {
    private lazy var searchButton: UIButton = {
        let button = UIButton()
        button.setTitle("Search", for: .normal)
        button.setTitleColor(.magenta, for: .focused)
        button.addTarget(self, action: #selector(openSearchController), for: .primaryActionTriggered)
        return button
    }()
    
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
        view.addSubview(searchButton)
        view.addSubview(inputButton)
    }
    
    override func viewWillLayoutSubviews() {
        searchButton.frame = CGRect(x: 860, y: 470, width: 200, height: 50)
        inputButton.frame = CGRect(x: 860, y: 540, width: 200, height: 50)
    }
    
    @objc private func openSearchController() {
        let resultsController = SearchResultsViewController()
        let searchController = UISearchController(searchResultsController: resultsController)
        let container = UISearchContainerViewController(
            searchController: searchController)
        container.view.backgroundColor = .black
        present(container, animated: true)
    }
    
    @objc private func openInputController() {
        present(InputViewController(), animated: true)
    }
}

