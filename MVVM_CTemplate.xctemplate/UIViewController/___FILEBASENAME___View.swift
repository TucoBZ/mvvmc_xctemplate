//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

// MARK: - View
// Remember to Link this file to your UIView .xib, if you are not using View Code
public class ___VARIABLE_Name:identifier___View: UIView {
    
    public weak var viewModel: ___VARIABLE_Name:identifier___ViewModelDelegate?
    
    //Link Outlets and put UI elements Here


    public override init(frame: CGRect) {
        super.init(frame: frame)
        //Setup here your View
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init?(coder:) is not supported")
    }

    deinit {
        print("\(type(of: self)) is being deInitialized.")
        NotificationCenter.default.removeObserver(self)
    }
}

// MARK: - Bind ViewViewModel
extension ___VARIABLE_Name:identifier___View : ___VARIABLE_Name:identifier___ViewProtocol {
    
    public func bind(_ viewViewModel: ___VARIABLE_Name:identifier___ViewViewModel) {
        //Setup here the view using the read-only variables from the ViewModel
    }
}
