//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    var navigationController: UINavigationController? {get set}
    var nextCoordinator: Coordinator? {get set}

    func create() -> UIViewController
    func start()
}

extension Coordinator {
    func start() {
        let viewController = create()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
