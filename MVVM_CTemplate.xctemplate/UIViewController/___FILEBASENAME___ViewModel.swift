//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

// MARK: - View Model
public class ___VARIABLE_Name:identifier___ViewModel: ___VARIABLE_Name:identifier___ViewViewModel {
    
    private let model: ___VARIABLE_Name:identifier___Model?
    public var coordinator: ___VARIABLE_Name:identifier___CoordinatorDelegate?
    public weak var view: ___VARIABLE_Name:identifier___ViewProtocol?
    
    public init(model: ___VARIABLE_Name:identifier___Model?, view: ___VARIABLE_Name:identifier___ViewProtocol, coordinator: ___VARIABLE_Name:identifier___CoordinatorDelegate) {
        self.model = model
        self.view = view
        self.view?.viewModel = self
        self.coordinator = coordinator
    }

    deinit {
        print("\(type(of: self)) is being deInitialized.")
        NotificationCenter.default.removeObserver(self)
    }
}

//MARK - View Delegates
extension ___VARIABLE_Name:identifier___ViewModel: ___VARIABLE_Name:identifier___ViewModelDelegate {
    
}

//MARK - View Controller Life Cycle
extension ___VARIABLE_Name:identifier___ViewModel: ___VARIABLE_Name:identifier___ViewModelProtocol {
    public func viewDidLoad() {
        view?.bind(self)
    }
}
