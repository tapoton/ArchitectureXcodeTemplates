//  ___FILEHEADER___

import Foundation
import UIKit


public final class ___VARIABLE_moduleName___Assembly {
    

    private enum Constants {
        
        enum Storyboard {
            
            static let name = "___VARIABLE_moduleName___"
            static let viewIdentifier = "___VARIABLE_moduleName___View"
        }
    }


    private static var storyboard: UIStoryboard {
        return UIStoryboard(name: Constants.Storyboard.name,
                            bundle: Bundle(for: ___VARIABLE_moduleName___View.self))
    }


    // MARK: Public

    public class func build(withView view: UIViewController,
                            container: ___VARIABLE_moduleName___ContainerType,
                            moduleDelegate: ___VARIABLE_moduleName___ModuleDelegate?) {
        
        guard let view = view as? ___VARIABLE_moduleName___View else { 
            return
        }
        
        self.build(withView: view,
                   container: container,
                   moduleDelegate: moduleDelegate)
    }
    

    public class func view(withContainer container: ___VARIABLE_moduleName___ContainerType,
                           moduleDelegate: ___VARIABLE_moduleName___ModuleDelegate?) -> UIViewController {
        
        let view = self.storyboard
            .instantiateViewController(withIdentifier: Constants.Storyboard.viewIdentifier)
        
        if let view = view as? ___VARIABLE_moduleName___View {
            
            self.build(withView: view,
                       container: container,
                       moduleDelegate: moduleDelegate)
        }
        
        return view
    }
    
    
    // MARK: Private

    fileprivate class func build(withView view: ___VARIABLE_moduleName___View,
                                 container: ___VARIABLE_moduleName___ContainerType,
                                 moduleDelegate: ___VARIABLE_moduleName___ModuleDelegate?) {
        
        let interactor = ___VARIABLE_moduleName___Interactor()
        
        let router = ___VARIABLE_moduleName___Router(container: container)
        router.source = view
        
        let presenter = ___VARIABLE_moduleName___Presenter(router: router, interactor: interactor)
        
        presenter.view = view
        presenter.moduleDelegate = moduleDelegate
        
        view.delegate = presenter

        interactor.delegate = presenter
    }
}
