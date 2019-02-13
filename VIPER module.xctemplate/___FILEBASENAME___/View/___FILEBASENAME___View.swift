//  ___FILEHEADER___

import Foundation
import UIKit


final class ___VARIABLE_moduleName___View: UIViewController {
    

    private enum Localized {

        private static var bundle: Bundle {
            return Bundle(for: ___VARIABLE_moduleName___View.self)
        }

        // static let <#name#> = NSLocalizedString(<#T##key: String##String#>, bundle: bundle, comment: "")
    }


    private enum Constants {
    
    }


    // MARK: Outlets
    
    
    // MARK: Public Properties

    public var delegate: ___VARIABLE_moduleName___ViewDelegate?
    
    
    // MARK: Private Properties
    

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate?.viewDidLoad(self)
    }
    
    
    // MARK: Actions
    
    
    // MARK: Public
    
    
    // MARK: Private


}


// MARK: - ___VARIABLE_moduleName___ViewType

extension ___VARIABLE_moduleName___View: ___VARIABLE_moduleName___ViewType {
    
}