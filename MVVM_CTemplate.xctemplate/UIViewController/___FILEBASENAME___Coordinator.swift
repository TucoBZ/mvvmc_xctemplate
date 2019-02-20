//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

// MARK: - Coordinator
public class ___VARIABLE_Name:identifier___Coordinator: Coordinator {
    
    var navigationController: UINavigationController? 
    weak var nextCoordinator: Coordinator? {
        didSet{
            nextCoordinator?.start()
        }
    }

    //If you need to pass parameters to this Coordinator
    public let model: ___VARIABLE_Name:identifier___Model?
    
    public init(model: ___VARIABLE_Name:identifier___Model?, navigationController: UINavigationController?) {
        self.model = model
        self.navigationController = navigationController
    }
    
    public func create() -> UIViewController {
        let controller = ___VARIABLE_Name:identifier___ViewController()
        
        let view = ___VARIABLE_Name:identifier___View(frame: .zero)
        let viewModel = ___VARIABLE_Name:identifier___ViewModel(model: model, view: view, coordinator: self)
        
        //Setup Controller
        controller.viewModel = viewModel
        controller.containerView = view

        return controller
    }

    deinit {
        print("\(type(of: self)) is being deInitialized.")
        NotificationCenter.default.removeObserver(self)
    }
}

// MARK: ViewModel next Steps
extension ___VARIABLE_Name:identifier___Coordinator: ___VARIABLE_Name:identifier___CoordinatorDelegate { }