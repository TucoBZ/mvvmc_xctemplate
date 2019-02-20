//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

//MARK - View Controller
class ___VARIABLE_Name:identifier___ViewController: ___VARIABLE_viewControllerSubclass___ {
    public var containerView: ___VARIABLE_Name:identifier___ViewProtocol?
    public var viewModel: ___VARIABLE_Name:identifier___ViewModel?

    // MARK: View lifecycle
    override public func loadView() {
        super.loadView()
        guard let view = containerView as? UIView else {return}
        self.view = view
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.viewDidLoad()
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    deinit {
        print("\(type(of: self)) is being deInitialized.")
        NotificationCenter.default.removeObserver(self)
    }
}