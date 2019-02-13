//  ___FILEHEADER___

import Foundation

final class ___VARIABLE_moduleName___Presenter {
    

    // MARK: Private Data Structures
    
    private enum Localized {

        private static var bundle: Bundle {
            return Bundle(for: ___VARIABLE_moduleName___View.self)
        }

        // static let <#name#> = NSLocalizedString(<#T##key: String##String#>, bundle: bundle, comment: "")
    }


    private enum Constants {
        
    }
    
    
    // MARK: Public Properties

    public weak var view: ___VARIABLE_moduleName___ViewType?
    public weak var moduleDelegate: ___VARIABLE_moduleName___ModuleDelegate?
    
    
    // MARK: Private Properties

    private let interactor: ___VARIABLE_moduleName___InteractorType
    private let router: ___VARIABLE_moduleName___RouterType
    
    
    // MARK: Lifecycle

    public init(router: ___VARIABLE_moduleName___RouterType,
                interactor: ___VARIABLE_moduleName___InteractorType) {
        
        self.router = router
        self.interactor = interactor
    }
}


// MARK: - ___VARIABLE_moduleName___ModuleType

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___ModuleType {

}


// MARK: - ___VARIABLE_moduleName___InteractorDelegate

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___InteractorDelegate {
    
}


// MARK: - ___VARIABLE_moduleName___ViewDelegate

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___ViewDelegate {
     
    /* notify delegate that module is ready and can be setup
     * delegate can save this module and provide data via `update(with:)` method
     * feel free to add your functionality here
     */
    public func viewDidLoad(_ view: ___VARIABLE_moduleName___ViewType) {

        self.moduleDelegate?.moduleDidLoad(self)
    }
}
