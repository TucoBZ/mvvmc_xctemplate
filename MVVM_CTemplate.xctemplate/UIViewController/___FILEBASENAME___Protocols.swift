//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

// MARK: - Protocols

// MARK: ___VARIABLE_Name:identifier___Model
// MODEL that can be updated and controled by the ViewModel
public protocol ___VARIABLE_Name:identifier___Model { }

// MARK: ___VARIABLE_Name:identifier___ViewViewModel
// VIEWVIEWMODEL used to update View, Try to only use read-only variable here
// (Ex:var name: String {get})
public protocol ___VARIABLE_Name:identifier___ViewViewModel { }

// MARK: ___VARIABLE_Name:identifier___ViewModelProtocol
// VIEWCONTROLLER -> VIEWMODEL (Update View Life Cycle to ViewModel)
public protocol ___VARIABLE_Name:identifier___ViewModelProtocol {
    /// Informs ViewModel that ViewController already loads
    func viewDidLoad()
}

// MARK: ___VARIABLE_Name:identifier___ViewModelDelegate
// VIEW -> VIEWMODEL (View Interactions to ViewModel)
public protocol ___VARIABLE_Name:identifier___ViewModelDelegate: class { }

// MARK: ___VARIABLE_Name:identifier___ViewProtocol
// VIEWMODEL -> VIEW (Updates View with ViewModel Logic)
public protocol ___VARIABLE_Name:identifier___ViewProtocol: class {
    var viewModel: ___VARIABLE_Name:identifier___ViewModelDelegate? {get set}
    
    /// Use this method to update View with read-only Variables
    ///
    /// - Parameter viewViewModel: the current model that can be displayed
    func bind(_ viewViewModel: ___VARIABLE_Name:identifier___ViewViewModel)
}

// MARK: ___VARIABLE_Name:identifier___CoordinatorDelegate
// VIEWMODEL -> COORDINATOR (informs next screen to start)
public protocol ___VARIABLE_Name:identifier___CoordinatorDelegate: class { }