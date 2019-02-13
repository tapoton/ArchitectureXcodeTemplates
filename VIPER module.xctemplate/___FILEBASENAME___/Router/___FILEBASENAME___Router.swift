//  ___FILEHEADER___

import Foundation
import UIKit


final class ___VARIABLE_moduleName___Router {
    
    // MARK: Public Properties
    
    public weak var source: UIViewController?


    // MARK: Private properties
    
    private let container: ___VARIABLE_moduleName___ContainerType
    

    // MARK: Lifecycle

    public init(container: ___VARIABLE_moduleName___ContainerType) {

        self.container = container
    }
}


// MARK: - ___VARIABLE_moduleName___RouterType

extension ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___RouterType {
    
    /* example:
        public func openOtherModule(with delegate: OtherModuleDelegate?) {
 
            let view = OtherModuleBuilder.view(with: delegate)
 
            source.show(view, animated: true)
        }
    */
}
